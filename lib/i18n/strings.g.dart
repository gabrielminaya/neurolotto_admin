/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 75
///
/// Built on 2023-12-04 at 19:41 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonEn common = _StringsCommonEn._(_root);
	late final _StringsSignInEn signIn = _StringsSignInEn._(_root);
	late final _StringsSplashEn splash = _StringsSplashEn._(_root);
	late final _StringsConsortiumEn consortium = _StringsConsortiumEn._(_root);
	late final _StringsGroupEn group = _StringsGroupEn._(_root);
	late final _StringsLotteryEn lottery = _StringsLotteryEn._(_root);
	late final _StringsStandEn stand = _StringsStandEn._(_root);
	late final _StringsMonitoringEn monitoring = _StringsMonitoringEn._(_root);
	late final _StringsTicketEn ticket = _StringsTicketEn._(_root);
}

// Path: common
class _StringsCommonEn {
	_StringsCommonEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get back => 'Back';
	String get next => 'Next';
	String get done => 'Done';
	String get save => 'Apply';
	String get signOut => 'Sign out';
}

// Path: signIn
class _StringsSignInEn {
	_StringsSignInEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get messageTitle => 'Sign-In';
	String get messageContent => 'If you have forgotten your password or are experiencing difficulties in signing in, feel free to get in touch with your supervisor for assistance.';
	String get signIn => 'Sign In';
	String get username => 'Username';
	String get password => 'Password';
}

// Path: splash
class _StringsSplashEn {
	_StringsSplashEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get notConsortiumErrorMessage => 'This user is currently not assigned to any consortium.';
}

// Path: consortium
class _StringsConsortiumEn {
	_StringsConsortiumEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Consortium Name';
	String get maximumSaleAmount => 'Maximum Sale Amount';
	String get quinielaMaxAmount => 'Maximum Quiniela Amount';
	String get paleMaxAmount => 'Maximum Pale Amount';
	String get tripletaMaxAmount => 'Maximum Triplet Amount';
	String get success => 'Consortium updated';
	String get empty => 'No associated consortium found';
}

// Path: group
class _StringsGroupEn {
	_StringsGroupEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get maximumSaleAmount => 'Maximum Sale Amount';
	String get quinielaMaxAmount => 'Maximum Quiniela Amount';
	String get paleMaxAmount => 'Maximum Pale Amount';
	String get tripletaMaxAmount => 'Maximum Triplet Amount';
	String get empty => 'No groups created';
	String get createdSuccess => 'Group created';
	String get updateSuccess => 'Group updated';
	String get deleteSuccess => 'Group deleted';
	String get active => 'Active';
	String get deleteTitle => 'Are you sure you want to delete this group';
	String get deleteContent => 'Only groups without related banks can be deleted';
}

// Path: lottery
class _StringsLotteryEn {
	_StringsLotteryEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get success => 'Lottery updated';
	String get active => 'Active';
	String get quinielaFirstPrize => 'Quiniela 1st Prize';
	String get quinielaSecondPrize => 'Quiniela 2nd Prize';
	String get quinielaThirdPrize => 'Quiniela 3rd Prize';
	String get paleFirstSecondPrize => 'Pale 1 & 2 Prize';
	String get paleFirstThirdPrize => 'Pale 1 & 3 Prize';
	String get paleSecondThirdPrize => 'Pale 2 & 3 Prize';
	String get tripletaPrice => 'Tripleta Prize';
	String get timeOpen => 'Opening Time';
	String get timeClose => 'Closing Time';
}

// Path: stand
class _StringsStandEn {
	_StringsStandEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get group => 'Group';
	String get contraint => 'Constraint';
	String get username => 'Username';
	String get maximumSaleAmount => 'Maximum sale amount';
	String get maximumCancellationAmount => 'Maximum cancellation amount';
	String get quinielaMaxAmount => 'Maximum quiniela amount';
	String get paleMaxAmount => 'Maximum pale amount';
	String get tripletaMaxAmount => 'Maximum triplet amount';
	String get active => 'Active';
}

// Path: monitoring
class _StringsMonitoringEn {
	_StringsMonitoringEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get dateForm => 'Date';
	String get dateToday => 'Today';
	String get dateYesterday => 'Yesterday';
	String get dateWeek => 'Week';
	String get dateMonth => 'Month';
	String get dateYear => 'Year';
	String get orderForm => 'Order';
	String get orderQuantity => 'Quantity';
	String get orderAmount => 'Amount';
	String get quiniela => 'Quiniela';
	String get pale => 'Pale';
	String get tripleta => 'Triplet';
	String get playEmpty => 'No plays available';
}

// Path: ticket
class _StringsTicketEn {
	_StringsTicketEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get cancelAction => 'Cancel';
	String get cancelActionTitle => 'Confirm Ticket Cancellation';
	String get cancelActionContent => 'This action cannot be undone. Are you sure?';
	String get cancelSuccess => 'Ticket canceled';
	String get showDetails => 'Show Details';
	String get empty => 'No tickets available';
	String get total => 'Total';
	String get date => 'Date';
	String get all => 'All';
	String get stands => 'Lotttery Stands';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.back': return 'Back';
			case 'common.next': return 'Next';
			case 'common.done': return 'Done';
			case 'common.save': return 'Apply';
			case 'common.signOut': return 'Sign out';
			case 'signIn.messageTitle': return 'Sign-In';
			case 'signIn.messageContent': return 'If you have forgotten your password or are experiencing difficulties in signing in, feel free to get in touch with your supervisor for assistance.';
			case 'signIn.signIn': return 'Sign In';
			case 'signIn.username': return 'Username';
			case 'signIn.password': return 'Password';
			case 'splash.notConsortiumErrorMessage': return 'This user is currently not assigned to any consortium.';
			case 'consortium.name': return 'Consortium Name';
			case 'consortium.maximumSaleAmount': return 'Maximum Sale Amount';
			case 'consortium.quinielaMaxAmount': return 'Maximum Quiniela Amount';
			case 'consortium.paleMaxAmount': return 'Maximum Pale Amount';
			case 'consortium.tripletaMaxAmount': return 'Maximum Triplet Amount';
			case 'consortium.success': return 'Consortium updated';
			case 'consortium.empty': return 'No associated consortium found';
			case 'group.name': return 'Name';
			case 'group.maximumSaleAmount': return 'Maximum Sale Amount';
			case 'group.quinielaMaxAmount': return 'Maximum Quiniela Amount';
			case 'group.paleMaxAmount': return 'Maximum Pale Amount';
			case 'group.tripletaMaxAmount': return 'Maximum Triplet Amount';
			case 'group.empty': return 'No groups created';
			case 'group.createdSuccess': return 'Group created';
			case 'group.updateSuccess': return 'Group updated';
			case 'group.deleteSuccess': return 'Group deleted';
			case 'group.active': return 'Active';
			case 'group.deleteTitle': return 'Are you sure you want to delete this group';
			case 'group.deleteContent': return 'Only groups without related banks can be deleted';
			case 'lottery.name': return 'Name';
			case 'lottery.success': return 'Lottery updated';
			case 'lottery.active': return 'Active';
			case 'lottery.quinielaFirstPrize': return 'Quiniela 1st Prize';
			case 'lottery.quinielaSecondPrize': return 'Quiniela 2nd Prize';
			case 'lottery.quinielaThirdPrize': return 'Quiniela 3rd Prize';
			case 'lottery.paleFirstSecondPrize': return 'Pale 1 & 2 Prize';
			case 'lottery.paleFirstThirdPrize': return 'Pale 1 & 3 Prize';
			case 'lottery.paleSecondThirdPrize': return 'Pale 2 & 3 Prize';
			case 'lottery.tripletaPrice': return 'Tripleta Prize';
			case 'lottery.timeOpen': return 'Opening Time';
			case 'lottery.timeClose': return 'Closing Time';
			case 'stand.name': return 'Name';
			case 'stand.group': return 'Group';
			case 'stand.contraint': return 'Constraint';
			case 'stand.username': return 'Username';
			case 'stand.maximumSaleAmount': return 'Maximum sale amount';
			case 'stand.maximumCancellationAmount': return 'Maximum cancellation amount';
			case 'stand.quinielaMaxAmount': return 'Maximum quiniela amount';
			case 'stand.paleMaxAmount': return 'Maximum pale amount';
			case 'stand.tripletaMaxAmount': return 'Maximum triplet amount';
			case 'stand.active': return 'Active';
			case 'monitoring.dateForm': return 'Date';
			case 'monitoring.dateToday': return 'Today';
			case 'monitoring.dateYesterday': return 'Yesterday';
			case 'monitoring.dateWeek': return 'Week';
			case 'monitoring.dateMonth': return 'Month';
			case 'monitoring.dateYear': return 'Year';
			case 'monitoring.orderForm': return 'Order';
			case 'monitoring.orderQuantity': return 'Quantity';
			case 'monitoring.orderAmount': return 'Amount';
			case 'monitoring.quiniela': return 'Quiniela';
			case 'monitoring.pale': return 'Pale';
			case 'monitoring.tripleta': return 'Triplet';
			case 'monitoring.playEmpty': return 'No plays available';
			case 'ticket.cancelAction': return 'Cancel';
			case 'ticket.cancelActionTitle': return 'Confirm Ticket Cancellation';
			case 'ticket.cancelActionContent': return 'This action cannot be undone. Are you sure?';
			case 'ticket.cancelSuccess': return 'Ticket canceled';
			case 'ticket.showDetails': return 'Show Details';
			case 'ticket.empty': return 'No tickets available';
			case 'ticket.total': return 'Total';
			case 'ticket.date': return 'Date';
			case 'ticket.all': return 'All';
			case 'ticket.stands': return 'Lotttery Stands';
			default: return null;
		}
	}
}
