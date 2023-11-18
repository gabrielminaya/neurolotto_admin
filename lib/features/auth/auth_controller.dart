import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/consortium_entity.dart';

part 'auth_controller.freezed.dart';

@Freezed()
sealed class AuthControllerState with _$AuthControllerState {
  const factory AuthControllerState({
    @Default(false) bool isLoading,
    @Default(null) User? user,
    @Default(null) ConsortiumEntity? consortium,
  }) = _AuthControllerState;
}

@Singleton()
class AuthController extends ValueNotifier<AuthControllerState> {
  AuthController(this._client) : super(const AuthControllerState());

  final SupabaseClient _client;
  bool get isAuthenticated => value.user != null;
  User? get user => value.user;
  ConsortiumEntity? get consortium => value.consortium;

  Future<void> initialize({
    ConsortiumEntity? consortium,
  }) async {
    value = value.copyWith(
      user: _client.auth.currentUser,
      consortium: consortium,
    );
  }

  Future<void> signIn({
    required String username,
    required String password,
    required void Function() onSuccess,
    required void Function(String message) onFailue,
  }) async {
    value = value.copyWith(isLoading: true);

    try {
      final response = await _client.auth.signInWithPassword(
        password: password,
        email: "$username@neurosoft.dev",
      );

      value = value.copyWith(user: response.user);

      onSuccess();
    } on AuthException catch (error) {
      onFailue(error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> signOut({
    required Function() onSuccess,
    Function(String message)? onError,
  }) async {
    try {
      _client.auth.signOut();
      value = value.copyWith(user: null);
      onSuccess();
    } on AuthException catch (error) {
      onError?.call(error.message);
    }
  }
}
