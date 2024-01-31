/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 337 (168 per locale)
///
/// Built on 2024-01-31 at 13:29 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.es;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.es) // set locale
/// - Locale locale = AppLocale.es.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.es) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _TranslationsEs> {
	es(languageCode: 'es', build: _TranslationsEs.build),
	en(languageCode: 'en', build: _TranslationsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _TranslationsEs> build;

	/// Gets current instance managed by [LocaleSettings].
	_TranslationsEs get translations => LocaleSettings.instance.translationMap[this]!;
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
_TranslationsEs get t => LocaleSettings.instance.currentTranslations;

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

	static _TranslationsEs of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEs>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _TranslationsEs> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _TranslationsEs> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEs>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_TranslationsEs get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEs> {
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
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEs> {
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
class _TranslationsEs implements BaseTranslations<AppLocale, _TranslationsEs> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _TranslationsEs> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEs _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
	late final _TranslationsSignInEs signIn = _TranslationsSignInEs._(_root);
	late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	late final _TranslationsConsortiumEs consortium = _TranslationsConsortiumEs._(_root);
	late final _TranslationsGroupEs group = _TranslationsGroupEs._(_root);
	late final _TranslationsLotteryEs lottery = _TranslationsLotteryEs._(_root);
	late final _TranslationsStandEs stand = _TranslationsStandEs._(_root);
	late final _TranslationsMonitoringEs monitoring = _TranslationsMonitoringEs._(_root);
	late final _TranslationsTicketEs ticket = _TranslationsTicketEs._(_root);
	late final _TranslationsSalesEs sales = _TranslationsSalesEs._(_root);
	late final _TranslationsResultEs result = _TranslationsResultEs._(_root);
	late final _TranslationsSettingsEs settings = _TranslationsSettingsEs._(_root);
}

// Path: common
class _TranslationsCommonEs {
	_TranslationsCommonEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get back => 'Atrás';
	String get next => 'Continuar';
	String get done => 'Completar';
	String get save => 'Aplicar';
	String get remove => 'Eliminar';
	String get signOut => 'Cerrar sesión';
	String get edit => 'Editar';
}

// Path: signIn
class _TranslationsSignInEs {
	_TranslationsSignInEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get messageTitle => 'Inicio de sesión';
	String get messageContent => 'Si has olvidado tu contraseña o tienes dificultades para iniciar sesión, no dudes en ponerte en contacto con tu supervisor para recibir asistencia.';
	String get signIn => 'Iniciar sesión';
	String get username => 'Usuario';
	String get password => 'Contraseña';
}

// Path: splash
class _TranslationsSplashEs {
	_TranslationsSplashEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get notConsortiumErrorMessage => 'Este usuario actualmente no está asociado a ningún consorcio.';
}

// Path: consortium
class _TranslationsConsortiumEs {
	_TranslationsConsortiumEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get name => 'Nombre del consorcio';
	String get maximumSaleAmount => 'Monto máximo de venta';
	String get quinielaMaxAmount => 'Monto máximo de quiniela';
	String get paleMaxAmount => 'Monto máximo de pale';
	String get tripletaMaxAmount => 'Monto máximo de tripleta';
	String get success => 'Consorcio actualizado';
	String get empty => 'No se encuentra el consorcio asociado';
}

// Path: group
class _TranslationsGroupEs {
	_TranslationsGroupEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Grupos';
	String get detail => 'Detalles';
	String get prizes => 'Premios';
	String get constraints => 'Restricciones';
	String get name => 'Nombre';
	String get selectAGroup => 'No hay grupo seleccionado';
	String get maximumSaleAmount => 'Monto máximo de venta';
	String get quinielaMaxAmount => 'Monto máximo de quiniela';
	String get paleMaxAmount => 'Monto máximo de pale';
	String get tripletaMaxAmount => 'Monto máximo de tripleta';
	String get empty => 'No hay grupos creados';
	String get add => 'Añadir';
	String get edit => 'Editar';
	String get delete => 'Borrar';
	String get createdSuccess => 'Grupo creado';
	String get updateSuccess => 'Grupo actualizado';
	String get deleteSuccess => 'Grupo borrado';
	String get active => 'Activo';
	String get deleteTitle => 'Estas seguro de borrar este grupo';
	String get deleteContent => 'Solo se pueden borrar grupos que no tengan una banca relacionadas';
	late final _TranslationsGroupConstraintFormEs constraintForm = _TranslationsGroupConstraintFormEs._(_root);
}

// Path: lottery
class _TranslationsLotteryEs {
	_TranslationsLotteryEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Loterías';
	String get detail => 'Detalles';
	String get schedules => 'Horarios';
	String get isClosed => 'Cerrada';
	String get name => 'Nombre';
	String get success => 'Lotería actualizada';
	String get active => 'Activo';
	String get edit => 'Editar';
	String get add => 'Añadir';
	String get scheduleEmpty => 'No hay horarios creados';
	String get effectiveDate => 'Fecha de vigencia';
	String get removeScheduleTitle => '¿Estas seguro de borrar este horario?';
	String get removeScheduleContent => 'No podras recuperar este horario';
	String get selectALottery => 'No hay lotería seleccionada';
	String get quinielaFirstPrize => 'Quiniela 1er premio';
	String get quinielaSecondPrize => 'Quiniela 2da premio';
	String get quinielaThirdPrize => 'Quiniela 3ra premio';
	String get paleFirstSecondPrize => 'Pale 1er & 2da premio';
	String get paleFirstThirdPrize => 'Pale 1er & 3da premio';
	String get paleSecondThirdPrize => 'Pale 2da & 3ra premio';
	String get tripletaPrice => 'Tripleta premio';
	String get timeOpen => 'Hora de apertura';
	String get timeClose => 'Hora de cierre';
}

// Path: stand
class _TranslationsStandEs {
	_TranslationsStandEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Bancas';
	String get detail => 'Detalles';
	String get prizes => 'Premios';
	String get constraints => 'Restricciones';
	String get name => 'Nombre';
	String get group => 'Grupo';
	String get selectAStand => 'No hay banca seleccionada';
	String get contraint => 'Restrinción';
	String get username => 'Usuario';
	String get maximumSaleAmount => 'Monto máximo de venta';
	String get maximumCancellationAmount => 'Monto máximo de cancelación';
	String get quinielaMaxAmount => 'Monto máximo de quiniela';
	String get paleMaxAmount => 'Monto máximo de pale';
	String get tripletaMaxAmount => 'Monto máximo de tripleta';
	late final _TranslationsStandConstraintFormEs constraintForm = _TranslationsStandConstraintFormEs._(_root);
	String get active => 'Activo';
}

// Path: monitoring
class _TranslationsMonitoringEs {
	_TranslationsMonitoringEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get dateForm => 'Fecha';
	String get dateToday => 'Hoy';
	String get dateYesterday => 'Ayer';
	String get dateWeek => 'Semana';
	String get dateMonth => 'Mes';
	String get dateYear => 'Año';
	String get orderForm => 'Orden';
	String get orderQuantity => 'Cantidad';
	String get orderAmount => 'Monto';
	String get lottery => 'Lotería';
	String get quiniela => 'Quiniela';
	String get pale => 'Pale';
	String get tripleta => 'Tripleta';
	String get playEmpty => 'No hay jugadas';
}

// Path: ticket
class _TranslationsTicketEs {
	_TranslationsTicketEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Tickets';
	String get detail => 'Detalles';
	String get number => 'Número';
	String get group => 'Grupo';
	String get stand => 'Banco';
	String get lottery => 'Lotería';
	String get play => 'Jugada';
	String get playAmount => 'Monto';
	String get subtotalAmount => 'Subtotal';
	String get status => 'Estado';
	String get cancelAction => 'Anular';
	String get cancelActionTitle => 'Confirmar Anulación del Ticket';
	String get cancelActionContent => 'Esta acción no se puede deshacer. ¿Estás seguro?';
	String get cancelSuccess => 'Ticket anulado';
	String get showDetails => 'Ver detalles';
	String get empty => 'No hay tickets disponibles';
	String get selectATicket => 'No hay ticket seleccionado';
	String get total => 'Total';
	String get date => 'Fecha';
	String get all => 'Todos';
	String get stands => 'Bancas';
}

// Path: sales
class _TranslationsSalesEs {
	_TranslationsSalesEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Ventas';
	String get saleSummary => 'Ventas Resumida';
	String get saleDetail => 'Ventas Detalladas';
	String get stand => 'Bancas';
	String get options => 'Opciones';
	String get all => 'Todas';
	String get date => 'Fecha';
	String get groups => 'Grupos';
	String get lotteries => 'Loterías';
	String get bank => 'Bancas';
	String get sales => 'Apostado';
	String get prizes => 'Premios';
	String get balance => 'Balance';
	String get total => 'Total';
}

// Path: result
class _TranslationsResultEs {
	_TranslationsResultEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get add => 'Añadir';
	String get edit => 'Editar';
	String get date => 'Fecha';
	String get lottery => 'Lotería';
	String get lotteryResult => 'Resultados';
	String get lotteryWinners => 'Premios';
	String get ticket => 'Ticket';
	String get time => 'Hora';
	String get play => 'Jugada';
	String get playAmount => 'Apostado';
	String get balance => 'Balance';
	String get group => 'Grupo';
	String get stand => 'Banca';
	String get firstPrize => 'Primer número';
	String get secondPrize => 'Segundo número';
	String get thirdPrize => 'Tercer número';
	String get empty => 'No hay resultados disponibles';
	late final _TranslationsResultConfirmationEs confirmation = _TranslationsResultConfirmationEs._(_root);
}

// Path: settings
class _TranslationsSettingsEs {
	_TranslationsSettingsEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Configuración';
	String get theme => 'Tema';
	String get dark => 'Oscuro';
	String get light => 'Claro';
	String get success => 'Configuración actualizada';
	late final _TranslationsSettingsOptionsEs options = _TranslationsSettingsOptionsEs._(_root);
}

// Path: group.constraintForm
class _TranslationsGroupConstraintFormEs {
	_TranslationsGroupConstraintFormEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Añadir Restricciones';
	String get amount => 'Monto';
	String get maxAmount => 'Monto maximo';
	String get empty => 'No hay restricciones creadas';
	String get from => 'Desde';
	String get to => 'Hasta (Opcional)';
}

// Path: stand.constraintForm
class _TranslationsStandConstraintFormEs {
	_TranslationsStandConstraintFormEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => 'Añadir Restricciones';
	String get amount => 'Monto';
	String get maxAmount => 'Monto maximo';
	String get empty => 'No hay restricciones creadas';
	String get from => 'Desde';
	String get to => 'Hasta (Opcional)';
}

// Path: result.confirmation
class _TranslationsResultConfirmationEs {
	_TranslationsResultConfirmationEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => '¿Estás seguro de que deseas confirmar los resultados?';
	String get yes => 'Si';
	String get no => 'No';
}

// Path: settings.options
class _TranslationsSettingsOptionsEs {
	_TranslationsSettingsOptionsEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get tickets => 'Tickets';
	String get stand => 'Bancas';
	String get lottery => 'Loterías';
	String get group => 'Grupos';
	String get consortium => 'Consorcio';
}

// Path: <root>
class _TranslationsEn extends _TranslationsEs {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _TranslationsEs> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	@override late final _TranslationsSignInEn signIn = _TranslationsSignInEn._(_root);
	@override late final _TranslationsSplashEn splash = _TranslationsSplashEn._(_root);
	@override late final _TranslationsConsortiumEn consortium = _TranslationsConsortiumEn._(_root);
	@override late final _TranslationsGroupEn group = _TranslationsGroupEn._(_root);
	@override late final _TranslationsLotteryEn lottery = _TranslationsLotteryEn._(_root);
	@override late final _TranslationsStandEn stand = _TranslationsStandEn._(_root);
	@override late final _TranslationsMonitoringEn monitoring = _TranslationsMonitoringEn._(_root);
	@override late final _TranslationsTicketEn ticket = _TranslationsTicketEn._(_root);
	@override late final _TranslationsSalesEn sales = _TranslationsSalesEn._(_root);
	@override late final _TranslationsResultEn result = _TranslationsResultEn._(_root);
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
}

// Path: common
class _TranslationsCommonEn extends _TranslationsCommonEs {
	_TranslationsCommonEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get back => 'Back';
	@override String get next => 'Next';
	@override String get done => 'Done';
	@override String get save => 'Apply';
	@override String get remove => 'Delete';
	@override String get signOut => 'Sign out';
	@override String get edit => 'Edit';
}

// Path: signIn
class _TranslationsSignInEn extends _TranslationsSignInEs {
	_TranslationsSignInEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get messageTitle => 'Sign-In';
	@override String get messageContent => 'If you have forgotten your password or are experiencing difficulties in signing in, feel free to get in touch with your supervisor for assistance.';
	@override String get signIn => 'Sign In';
	@override String get username => 'Username';
	@override String get password => 'Password';
}

// Path: splash
class _TranslationsSplashEn extends _TranslationsSplashEs {
	_TranslationsSplashEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get notConsortiumErrorMessage => 'This user is currently not assigned to any consortium.';
}

// Path: consortium
class _TranslationsConsortiumEn extends _TranslationsConsortiumEs {
	_TranslationsConsortiumEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Consortium Name';
	@override String get maximumSaleAmount => 'Maximum Sale Amount';
	@override String get quinielaMaxAmount => 'Maximum Quiniela Amount';
	@override String get paleMaxAmount => 'Maximum Pale Amount';
	@override String get tripletaMaxAmount => 'Maximum Triplet Amount';
	@override String get success => 'Consortium updated';
	@override String get empty => 'No associated consortium found';
}

// Path: group
class _TranslationsGroupEn extends _TranslationsGroupEs {
	_TranslationsGroupEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Groups';
	@override String get detail => 'Details';
	@override String get prizes => 'Prizes';
	@override String get constraints => 'Constraints';
	@override String get name => 'Name';
	@override String get selectAGroup => 'No group selected';
	@override String get add => 'Add';
	@override String get edit => 'Edit';
	@override String get delete => 'Delete';
	@override String get maximumSaleAmount => 'Maximum sale amount';
	@override String get quinielaMaxAmount => 'Maximum quiniela amount';
	@override String get paleMaxAmount => 'Maximum pale amount';
	@override String get tripletaMaxAmount => 'Maximum triplet amount';
	@override String get empty => 'No groups created';
	@override String get createdSuccess => 'Group created';
	@override String get updateSuccess => 'Group updated';
	@override String get deleteSuccess => 'Group deleted';
	@override String get active => 'Active';
	@override String get deleteTitle => 'Are you sure you want to delete this group';
	@override String get deleteContent => 'Only groups without associated benches can be deleted';
	@override late final _TranslationsGroupConstraintFormEn constraintForm = _TranslationsGroupConstraintFormEn._(_root);
}

// Path: lottery
class _TranslationsLotteryEn extends _TranslationsLotteryEs {
	_TranslationsLotteryEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lotteries';
	@override String get details => 'Details';
	@override String get schedules => 'Schedules';
	@override String get isClosed => 'Closed';
	@override String get name => 'Name';
	@override String get success => 'Lottery updated';
	@override String get active => 'Active';
	@override String get add => 'Add';
	@override String get scheduleEmpty => 'No schedules created';
	@override String get effectiveDate => 'Effective Date';
	@override String get removeScheduleTitle => 'Are you sure you want to delete this schedule?';
	@override String get removeScheduleContent => 'No schedule can be restored';
	@override String get selectALottery => 'No lottery selected';
	@override String get quinielaFirstPrize => 'Quiniela 1st prize';
	@override String get quinielaSecondPrize => 'Quiniela 2nd prize';
	@override String get quinielaThirdPrize => 'Quiniela 3rd prize';
	@override String get paleFirstSecondPrize => 'Pale 1st & 2nd prize';
	@override String get paleFirstThirdPrize => 'Pale 1st & 3rd prize';
	@override String get paleSecondThirdPrize => 'Pale 2nd & 3rd prize';
	@override String get tripletaPrice => 'Tripleta prize';
	@override String get timeOpen => 'Opening time';
	@override String get timeClose => 'Closing time';
}

// Path: stand
class _TranslationsStandEn extends _TranslationsStandEs {
	_TranslationsStandEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stands';
	@override String get detail => 'Details';
	@override String get prizes => 'Prizes';
	@override String get constraints => 'Constraints';
	@override String get name => 'Name';
	@override String get group => 'Group';
	@override String get selectAStand => 'No stand selected';
	@override String get contraint => 'Constraint';
	@override String get username => 'Username';
	@override String get maximumSaleAmount => 'Maximum sale amount';
	@override String get maximumCancellationAmount => 'Maximum cancellation amount';
	@override String get quinielaMaxAmount => 'Maximum quiniela amount';
	@override String get paleMaxAmount => 'Maximum pale amount';
	@override String get tripletaMaxAmount => 'Maximum triplet amount';
	@override late final _TranslationsStandConstraintFormEn constraintForm = _TranslationsStandConstraintFormEn._(_root);
	@override String get active => 'Active';
}

// Path: monitoring
class _TranslationsMonitoringEn extends _TranslationsMonitoringEs {
	_TranslationsMonitoringEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get dateForm => 'Date';
	@override String get dateToday => 'Today';
	@override String get dateYesterday => 'Yesterday';
	@override String get dateWeek => 'Week';
	@override String get dateMonth => 'Month';
	@override String get dateYear => 'Year';
	@override String get orderForm => 'Order';
	@override String get lottery => 'Lottery';
	@override String get orderQuantity => 'Quantity';
	@override String get orderAmount => 'Amount';
	@override String get quiniela => 'Quiniela';
	@override String get pale => 'Pale';
	@override String get tripleta => 'Triplet';
	@override String get playEmpty => 'No plays available';
}

// Path: ticket
class _TranslationsTicketEn extends _TranslationsTicketEs {
	_TranslationsTicketEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tickets';
	@override String get detail => 'Details';
	@override String get number => 'Number';
	@override String get group => 'Grupo';
	@override String get stand => 'Stand';
	@override String get lottery => 'Lottery';
	@override String get play => 'Play';
	@override String get playAmount => 'Amount';
	@override String get subtotalAmount => 'Subtotal';
	@override String get status => 'Status';
	@override String get cancelAction => 'Cancel';
	@override String get cancelActionTitle => 'Confirm Ticket Cancellation';
	@override String get cancelActionContent => 'This action cannot be undone. Are you sure?';
	@override String get cancelSuccess => 'Ticket canceled';
	@override String get showDetails => 'Show Details';
	@override String get selectATicket => 'No ticket selected';
	@override String get empty => 'No tickets available';
	@override String get total => 'Total';
	@override String get date => 'Date';
	@override String get all => 'All';
	@override String get stands => 'Lotttery Stands';
}

// Path: sales
class _TranslationsSalesEn extends _TranslationsSalesEs {
	_TranslationsSalesEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sales';
	@override String get saleSummary => 'Sale Summary';
	@override String get saleDetail => 'Sale Detailed';
	@override String get stand => 'Stands';
	@override String get options => 'Options';
	@override String get all => 'All';
	@override String get date => 'Date';
	@override String get groups => 'Groups';
	@override String get lotteries => 'Lotteries';
	@override String get bank => 'Bank';
	@override String get sales => 'Sales';
	@override String get prizes => 'Prizes';
	@override String get balance => 'Balance';
	@override String get total => 'Total';
}

// Path: result
class _TranslationsResultEn extends _TranslationsResultEs {
	_TranslationsResultEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get add => 'Add';
	@override String get edit => 'Edit';
	@override String get date => 'Date';
	@override String get lottery => 'Lottery';
	@override String get lotteryResult => 'Results';
	@override String get lotteryWinners => 'Winners';
	@override String get ticket => 'Ticket';
	@override String get time => 'Time';
	@override String get play => 'Play';
	@override String get playAmount => 'Amount';
	@override String get balance => 'Balance';
	@override String get group => 'Group';
	@override String get stand => 'Stand';
	@override String get firstPrize => 'First number';
	@override String get secondPrize => 'Second number';
	@override String get thirdPrize => 'Third number';
	@override String get empty => 'No results available';
	@override late final _TranslationsResultConfirmationEn confirmation = _TranslationsResultConfirmationEn._(_root);
}

// Path: settings
class _TranslationsSettingsEn extends _TranslationsSettingsEs {
	_TranslationsSettingsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override String get theme => 'Theme';
	@override String get dark => 'Dark';
	@override String get light => 'Light';
	@override String get success => 'Settings updated';
	@override late final _TranslationsSettingsOptionsEn options = _TranslationsSettingsOptionsEn._(_root);
}

// Path: group.constraintForm
class _TranslationsGroupConstraintFormEn extends _TranslationsGroupConstraintFormEs {
	_TranslationsGroupConstraintFormEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Add Constraints';
	@override String get amount => 'Amount';
	@override String get maxAmount => 'Maximum amount';
	@override String get empty => 'No constraints created';
	@override String get from => 'From';
	@override String get to => 'To (Optional)';
}

// Path: stand.constraintForm
class _TranslationsStandConstraintFormEn extends _TranslationsStandConstraintFormEs {
	_TranslationsStandConstraintFormEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Add Constraints';
	@override String get amount => 'Amount';
	@override String get maxAmount => 'Maximum amount';
	@override String get empty => 'No constraints created';
	@override String get from => 'From';
	@override String get to => 'To (Optional)';
}

// Path: result.confirmation
class _TranslationsResultConfirmationEn extends _TranslationsResultConfirmationEs {
	_TranslationsResultConfirmationEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Are you sure you want to confirm the results?';
	@override String get yes => 'Yes';
	@override String get no => 'No';
}

// Path: settings.options
class _TranslationsSettingsOptionsEn extends _TranslationsSettingsOptionsEs {
	_TranslationsSettingsOptionsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get tickets => 'Tickets';
	@override String get stand => 'Stands';
	@override String get lottery => 'Lotteries';
	@override String get group => 'Groups';
	@override String get consortium => 'Consortium';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.back': return 'Atrás';
			case 'common.next': return 'Continuar';
			case 'common.done': return 'Completar';
			case 'common.save': return 'Aplicar';
			case 'common.remove': return 'Eliminar';
			case 'common.signOut': return 'Cerrar sesión';
			case 'common.edit': return 'Editar';
			case 'signIn.messageTitle': return 'Inicio de sesión';
			case 'signIn.messageContent': return 'Si has olvidado tu contraseña o tienes dificultades para iniciar sesión, no dudes en ponerte en contacto con tu supervisor para recibir asistencia.';
			case 'signIn.signIn': return 'Iniciar sesión';
			case 'signIn.username': return 'Usuario';
			case 'signIn.password': return 'Contraseña';
			case 'splash.notConsortiumErrorMessage': return 'Este usuario actualmente no está asociado a ningún consorcio.';
			case 'consortium.name': return 'Nombre del consorcio';
			case 'consortium.maximumSaleAmount': return 'Monto máximo de venta';
			case 'consortium.quinielaMaxAmount': return 'Monto máximo de quiniela';
			case 'consortium.paleMaxAmount': return 'Monto máximo de pale';
			case 'consortium.tripletaMaxAmount': return 'Monto máximo de tripleta';
			case 'consortium.success': return 'Consorcio actualizado';
			case 'consortium.empty': return 'No se encuentra el consorcio asociado';
			case 'group.title': return 'Grupos';
			case 'group.detail': return 'Detalles';
			case 'group.prizes': return 'Premios';
			case 'group.constraints': return 'Restricciones';
			case 'group.name': return 'Nombre';
			case 'group.selectAGroup': return 'No hay grupo seleccionado';
			case 'group.maximumSaleAmount': return 'Monto máximo de venta';
			case 'group.quinielaMaxAmount': return 'Monto máximo de quiniela';
			case 'group.paleMaxAmount': return 'Monto máximo de pale';
			case 'group.tripletaMaxAmount': return 'Monto máximo de tripleta';
			case 'group.empty': return 'No hay grupos creados';
			case 'group.add': return 'Añadir';
			case 'group.edit': return 'Editar';
			case 'group.delete': return 'Borrar';
			case 'group.createdSuccess': return 'Grupo creado';
			case 'group.updateSuccess': return 'Grupo actualizado';
			case 'group.deleteSuccess': return 'Grupo borrado';
			case 'group.active': return 'Activo';
			case 'group.deleteTitle': return 'Estas seguro de borrar este grupo';
			case 'group.deleteContent': return 'Solo se pueden borrar grupos que no tengan una banca relacionadas';
			case 'group.constraintForm.title': return 'Añadir Restricciones';
			case 'group.constraintForm.amount': return 'Monto';
			case 'group.constraintForm.maxAmount': return 'Monto maximo';
			case 'group.constraintForm.empty': return 'No hay restricciones creadas';
			case 'group.constraintForm.from': return 'Desde';
			case 'group.constraintForm.to': return 'Hasta (Opcional)';
			case 'lottery.title': return 'Loterías';
			case 'lottery.detail': return 'Detalles';
			case 'lottery.schedules': return 'Horarios';
			case 'lottery.isClosed': return 'Cerrada';
			case 'lottery.name': return 'Nombre';
			case 'lottery.success': return 'Lotería actualizada';
			case 'lottery.active': return 'Activo';
			case 'lottery.edit': return 'Editar';
			case 'lottery.add': return 'Añadir';
			case 'lottery.scheduleEmpty': return 'No hay horarios creados';
			case 'lottery.effectiveDate': return 'Fecha de vigencia';
			case 'lottery.removeScheduleTitle': return '¿Estas seguro de borrar este horario?';
			case 'lottery.removeScheduleContent': return 'No podras recuperar este horario';
			case 'lottery.selectALottery': return 'No hay lotería seleccionada';
			case 'lottery.quinielaFirstPrize': return 'Quiniela 1er premio';
			case 'lottery.quinielaSecondPrize': return 'Quiniela 2da premio';
			case 'lottery.quinielaThirdPrize': return 'Quiniela 3ra premio';
			case 'lottery.paleFirstSecondPrize': return 'Pale 1er & 2da premio';
			case 'lottery.paleFirstThirdPrize': return 'Pale 1er & 3da premio';
			case 'lottery.paleSecondThirdPrize': return 'Pale 2da & 3ra premio';
			case 'lottery.tripletaPrice': return 'Tripleta premio';
			case 'lottery.timeOpen': return 'Hora de apertura';
			case 'lottery.timeClose': return 'Hora de cierre';
			case 'stand.title': return 'Bancas';
			case 'stand.detail': return 'Detalles';
			case 'stand.prizes': return 'Premios';
			case 'stand.constraints': return 'Restricciones';
			case 'stand.name': return 'Nombre';
			case 'stand.group': return 'Grupo';
			case 'stand.selectAStand': return 'No hay banca seleccionada';
			case 'stand.contraint': return 'Restrinción';
			case 'stand.username': return 'Usuario';
			case 'stand.maximumSaleAmount': return 'Monto máximo de venta';
			case 'stand.maximumCancellationAmount': return 'Monto máximo de cancelación';
			case 'stand.quinielaMaxAmount': return 'Monto máximo de quiniela';
			case 'stand.paleMaxAmount': return 'Monto máximo de pale';
			case 'stand.tripletaMaxAmount': return 'Monto máximo de tripleta';
			case 'stand.constraintForm.title': return 'Añadir Restricciones';
			case 'stand.constraintForm.amount': return 'Monto';
			case 'stand.constraintForm.maxAmount': return 'Monto maximo';
			case 'stand.constraintForm.empty': return 'No hay restricciones creadas';
			case 'stand.constraintForm.from': return 'Desde';
			case 'stand.constraintForm.to': return 'Hasta (Opcional)';
			case 'stand.active': return 'Activo';
			case 'monitoring.dateForm': return 'Fecha';
			case 'monitoring.dateToday': return 'Hoy';
			case 'monitoring.dateYesterday': return 'Ayer';
			case 'monitoring.dateWeek': return 'Semana';
			case 'monitoring.dateMonth': return 'Mes';
			case 'monitoring.dateYear': return 'Año';
			case 'monitoring.orderForm': return 'Orden';
			case 'monitoring.orderQuantity': return 'Cantidad';
			case 'monitoring.orderAmount': return 'Monto';
			case 'monitoring.lottery': return 'Lotería';
			case 'monitoring.quiniela': return 'Quiniela';
			case 'monitoring.pale': return 'Pale';
			case 'monitoring.tripleta': return 'Tripleta';
			case 'monitoring.playEmpty': return 'No hay jugadas';
			case 'ticket.title': return 'Tickets';
			case 'ticket.detail': return 'Detalles';
			case 'ticket.number': return 'Número';
			case 'ticket.group': return 'Grupo';
			case 'ticket.stand': return 'Banco';
			case 'ticket.lottery': return 'Lotería';
			case 'ticket.play': return 'Jugada';
			case 'ticket.playAmount': return 'Monto';
			case 'ticket.subtotalAmount': return 'Subtotal';
			case 'ticket.status': return 'Estado';
			case 'ticket.cancelAction': return 'Anular';
			case 'ticket.cancelActionTitle': return 'Confirmar Anulación del Ticket';
			case 'ticket.cancelActionContent': return 'Esta acción no se puede deshacer. ¿Estás seguro?';
			case 'ticket.cancelSuccess': return 'Ticket anulado';
			case 'ticket.showDetails': return 'Ver detalles';
			case 'ticket.empty': return 'No hay tickets disponibles';
			case 'ticket.selectATicket': return 'No hay ticket seleccionado';
			case 'ticket.total': return 'Total';
			case 'ticket.date': return 'Fecha';
			case 'ticket.all': return 'Todos';
			case 'ticket.stands': return 'Bancas';
			case 'sales.title': return 'Ventas';
			case 'sales.saleSummary': return 'Ventas Resumida';
			case 'sales.saleDetail': return 'Ventas Detalladas';
			case 'sales.stand': return 'Bancas';
			case 'sales.options': return 'Opciones';
			case 'sales.all': return 'Todas';
			case 'sales.date': return 'Fecha';
			case 'sales.groups': return 'Grupos';
			case 'sales.lotteries': return 'Loterías';
			case 'sales.bank': return 'Bancas';
			case 'sales.sales': return 'Apostado';
			case 'sales.prizes': return 'Premios';
			case 'sales.balance': return 'Balance';
			case 'sales.total': return 'Total';
			case 'result.add': return 'Añadir';
			case 'result.edit': return 'Editar';
			case 'result.date': return 'Fecha';
			case 'result.lottery': return 'Lotería';
			case 'result.lotteryResult': return 'Resultados';
			case 'result.lotteryWinners': return 'Premios';
			case 'result.ticket': return 'Ticket';
			case 'result.time': return 'Hora';
			case 'result.play': return 'Jugada';
			case 'result.playAmount': return 'Apostado';
			case 'result.balance': return 'Balance';
			case 'result.group': return 'Grupo';
			case 'result.stand': return 'Banca';
			case 'result.firstPrize': return 'Primer número';
			case 'result.secondPrize': return 'Segundo número';
			case 'result.thirdPrize': return 'Tercer número';
			case 'result.empty': return 'No hay resultados disponibles';
			case 'result.confirmation.title': return '¿Estás seguro de que deseas confirmar los resultados?';
			case 'result.confirmation.yes': return 'Si';
			case 'result.confirmation.no': return 'No';
			case 'settings.title': return 'Configuración';
			case 'settings.theme': return 'Tema';
			case 'settings.dark': return 'Oscuro';
			case 'settings.light': return 'Claro';
			case 'settings.success': return 'Configuración actualizada';
			case 'settings.options.tickets': return 'Tickets';
			case 'settings.options.stand': return 'Bancas';
			case 'settings.options.lottery': return 'Loterías';
			case 'settings.options.group': return 'Grupos';
			case 'settings.options.consortium': return 'Consorcio';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.back': return 'Back';
			case 'common.next': return 'Next';
			case 'common.done': return 'Done';
			case 'common.save': return 'Apply';
			case 'common.remove': return 'Delete';
			case 'common.signOut': return 'Sign out';
			case 'common.edit': return 'Edit';
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
			case 'group.title': return 'Groups';
			case 'group.detail': return 'Details';
			case 'group.prizes': return 'Prizes';
			case 'group.constraints': return 'Constraints';
			case 'group.name': return 'Name';
			case 'group.selectAGroup': return 'No group selected';
			case 'group.add': return 'Add';
			case 'group.edit': return 'Edit';
			case 'group.delete': return 'Delete';
			case 'group.maximumSaleAmount': return 'Maximum sale amount';
			case 'group.quinielaMaxAmount': return 'Maximum quiniela amount';
			case 'group.paleMaxAmount': return 'Maximum pale amount';
			case 'group.tripletaMaxAmount': return 'Maximum triplet amount';
			case 'group.empty': return 'No groups created';
			case 'group.createdSuccess': return 'Group created';
			case 'group.updateSuccess': return 'Group updated';
			case 'group.deleteSuccess': return 'Group deleted';
			case 'group.active': return 'Active';
			case 'group.deleteTitle': return 'Are you sure you want to delete this group';
			case 'group.deleteContent': return 'Only groups without associated benches can be deleted';
			case 'group.constraintForm.title': return 'Add Constraints';
			case 'group.constraintForm.amount': return 'Amount';
			case 'group.constraintForm.maxAmount': return 'Maximum amount';
			case 'group.constraintForm.empty': return 'No constraints created';
			case 'group.constraintForm.from': return 'From';
			case 'group.constraintForm.to': return 'To (Optional)';
			case 'lottery.title': return 'Lotteries';
			case 'lottery.details': return 'Details';
			case 'lottery.schedules': return 'Schedules';
			case 'lottery.isClosed': return 'Closed';
			case 'lottery.name': return 'Name';
			case 'lottery.success': return 'Lottery updated';
			case 'lottery.active': return 'Active';
			case 'lottery.add': return 'Add';
			case 'lottery.scheduleEmpty': return 'No schedules created';
			case 'lottery.effectiveDate': return 'Effective Date';
			case 'lottery.removeScheduleTitle': return 'Are you sure you want to delete this schedule?';
			case 'lottery.removeScheduleContent': return 'No schedule can be restored';
			case 'lottery.selectALottery': return 'No lottery selected';
			case 'lottery.quinielaFirstPrize': return 'Quiniela 1st prize';
			case 'lottery.quinielaSecondPrize': return 'Quiniela 2nd prize';
			case 'lottery.quinielaThirdPrize': return 'Quiniela 3rd prize';
			case 'lottery.paleFirstSecondPrize': return 'Pale 1st & 2nd prize';
			case 'lottery.paleFirstThirdPrize': return 'Pale 1st & 3rd prize';
			case 'lottery.paleSecondThirdPrize': return 'Pale 2nd & 3rd prize';
			case 'lottery.tripletaPrice': return 'Tripleta prize';
			case 'lottery.timeOpen': return 'Opening time';
			case 'lottery.timeClose': return 'Closing time';
			case 'stand.title': return 'Stands';
			case 'stand.detail': return 'Details';
			case 'stand.prizes': return 'Prizes';
			case 'stand.constraints': return 'Constraints';
			case 'stand.name': return 'Name';
			case 'stand.group': return 'Group';
			case 'stand.selectAStand': return 'No stand selected';
			case 'stand.contraint': return 'Constraint';
			case 'stand.username': return 'Username';
			case 'stand.maximumSaleAmount': return 'Maximum sale amount';
			case 'stand.maximumCancellationAmount': return 'Maximum cancellation amount';
			case 'stand.quinielaMaxAmount': return 'Maximum quiniela amount';
			case 'stand.paleMaxAmount': return 'Maximum pale amount';
			case 'stand.tripletaMaxAmount': return 'Maximum triplet amount';
			case 'stand.constraintForm.title': return 'Add Constraints';
			case 'stand.constraintForm.amount': return 'Amount';
			case 'stand.constraintForm.maxAmount': return 'Maximum amount';
			case 'stand.constraintForm.empty': return 'No constraints created';
			case 'stand.constraintForm.from': return 'From';
			case 'stand.constraintForm.to': return 'To (Optional)';
			case 'stand.active': return 'Active';
			case 'monitoring.dateForm': return 'Date';
			case 'monitoring.dateToday': return 'Today';
			case 'monitoring.dateYesterday': return 'Yesterday';
			case 'monitoring.dateWeek': return 'Week';
			case 'monitoring.dateMonth': return 'Month';
			case 'monitoring.dateYear': return 'Year';
			case 'monitoring.orderForm': return 'Order';
			case 'monitoring.lottery': return 'Lottery';
			case 'monitoring.orderQuantity': return 'Quantity';
			case 'monitoring.orderAmount': return 'Amount';
			case 'monitoring.quiniela': return 'Quiniela';
			case 'monitoring.pale': return 'Pale';
			case 'monitoring.tripleta': return 'Triplet';
			case 'monitoring.playEmpty': return 'No plays available';
			case 'ticket.title': return 'Tickets';
			case 'ticket.detail': return 'Details';
			case 'ticket.number': return 'Number';
			case 'ticket.group': return 'Grupo';
			case 'ticket.stand': return 'Stand';
			case 'ticket.lottery': return 'Lottery';
			case 'ticket.play': return 'Play';
			case 'ticket.playAmount': return 'Amount';
			case 'ticket.subtotalAmount': return 'Subtotal';
			case 'ticket.status': return 'Status';
			case 'ticket.cancelAction': return 'Cancel';
			case 'ticket.cancelActionTitle': return 'Confirm Ticket Cancellation';
			case 'ticket.cancelActionContent': return 'This action cannot be undone. Are you sure?';
			case 'ticket.cancelSuccess': return 'Ticket canceled';
			case 'ticket.showDetails': return 'Show Details';
			case 'ticket.selectATicket': return 'No ticket selected';
			case 'ticket.empty': return 'No tickets available';
			case 'ticket.total': return 'Total';
			case 'ticket.date': return 'Date';
			case 'ticket.all': return 'All';
			case 'ticket.stands': return 'Lotttery Stands';
			case 'sales.title': return 'Sales';
			case 'sales.saleSummary': return 'Sale Summary';
			case 'sales.saleDetail': return 'Sale Detailed';
			case 'sales.stand': return 'Stands';
			case 'sales.options': return 'Options';
			case 'sales.all': return 'All';
			case 'sales.date': return 'Date';
			case 'sales.groups': return 'Groups';
			case 'sales.lotteries': return 'Lotteries';
			case 'sales.bank': return 'Bank';
			case 'sales.sales': return 'Sales';
			case 'sales.prizes': return 'Prizes';
			case 'sales.balance': return 'Balance';
			case 'sales.total': return 'Total';
			case 'result.add': return 'Add';
			case 'result.edit': return 'Edit';
			case 'result.date': return 'Date';
			case 'result.lottery': return 'Lottery';
			case 'result.lotteryResult': return 'Results';
			case 'result.lotteryWinners': return 'Winners';
			case 'result.ticket': return 'Ticket';
			case 'result.time': return 'Time';
			case 'result.play': return 'Play';
			case 'result.playAmount': return 'Amount';
			case 'result.balance': return 'Balance';
			case 'result.group': return 'Group';
			case 'result.stand': return 'Stand';
			case 'result.firstPrize': return 'First number';
			case 'result.secondPrize': return 'Second number';
			case 'result.thirdPrize': return 'Third number';
			case 'result.empty': return 'No results available';
			case 'result.confirmation.title': return 'Are you sure you want to confirm the results?';
			case 'result.confirmation.yes': return 'Yes';
			case 'result.confirmation.no': return 'No';
			case 'settings.title': return 'Settings';
			case 'settings.theme': return 'Theme';
			case 'settings.dark': return 'Dark';
			case 'settings.light': return 'Light';
			case 'settings.success': return 'Settings updated';
			case 'settings.options.tickets': return 'Tickets';
			case 'settings.options.stand': return 'Stands';
			case 'settings.options.lottery': return 'Lotteries';
			case 'settings.options.group': return 'Groups';
			case 'settings.options.consortium': return 'Consortium';
			default: return null;
		}
	}
}
