// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryEntityImpl _$$LotteryEntityImplFromJson(Map<String, dynamic> json) =>
    _$LotteryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as bool,
      quinielaFirstPrize: json['quiniela_first_prize'] as num,
      quinielaSecondPrize: json['quiniela_second_prize'] as num,
      quinielaThirdPrize: json['quiniela_third_prize'] as num,
      paleFirstSecondPrize: json['pale_first_second_prize'] as num,
      paleFirstThirdPrize: json['pale_first_third_prize'] as num,
      paleSecondThirdPrize: json['pale_second_third_prize'] as num,
      tripletaPrice: json['tripleta_prize'] as num,
      timeOpen: json['time_open'] as String,
      timeClose: json['time_close'] as String,
    );

Map<String, dynamic> _$$LotteryEntityImplToJson(_$LotteryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'quiniela_first_prize': instance.quinielaFirstPrize,
      'quiniela_second_prize': instance.quinielaSecondPrize,
      'quiniela_third_prize': instance.quinielaThirdPrize,
      'pale_first_second_prize': instance.paleFirstSecondPrize,
      'pale_first_third_prize': instance.paleFirstThirdPrize,
      'pale_second_third_prize': instance.paleSecondThirdPrize,
      'tripleta_prize': instance.tripletaPrice,
      'time_open': instance.timeOpen,
      'time_close': instance.timeClose,
    };
