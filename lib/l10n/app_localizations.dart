import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ko'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Pokémon Rainbow City'**
  String get appTitle;

  /// No description provided for @confirmText.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmText;

  /// No description provided for @cancelText.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelText;

  /// No description provided for @backText.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backText;

  /// No description provided for @okText.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get okText;

  /// No description provided for @closeText.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeText;

  /// No description provided for @loadingText.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loadingText;

  /// No description provided for @mainTitle.
  ///
  /// In en, this message translates to:
  /// **'Rainbow City Pokémon Market'**
  String get mainTitle;

  /// No description provided for @mainSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover today\'s Pokémon!'**
  String get mainSubtitle;

  /// No description provided for @mainGoToShop.
  ///
  /// In en, this message translates to:
  /// **'Go to Pokémon Shop'**
  String get mainGoToShop;

  /// No description provided for @goodsRegistration.
  ///
  /// In en, this message translates to:
  /// **'Do you want to register a Pokémon?'**
  String get goodsRegistration;

  /// No description provided for @goodsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Pokémon List'**
  String get goodsListTitle;

  /// No description provided for @goodsSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by Pokémon name.'**
  String get goodsSearchHint;

  /// No description provided for @goodsEmptyText.
  ///
  /// In en, this message translates to:
  /// **'No Pokémon available'**
  String get goodsEmptyText;

  /// No description provided for @cartTitle.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cartTitle;

  /// No description provided for @cartEmptyText.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty.'**
  String get cartEmptyText;

  /// No description provided for @cartTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get cartTotalLabel;

  /// No description provided for @cartCheckoutButton.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get cartCheckoutButton;

  /// No description provided for @cartRemoveItem.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get cartRemoveItem;

  /// No description provided for @registerPokemonTitle.
  ///
  /// In en, this message translates to:
  /// **'Register Pokémon'**
  String get registerPokemonTitle;

  /// No description provided for @registerPokemonSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the details of your Pokémon'**
  String get registerPokemonSubtitle;

  /// No description provided for @pokemonNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Pokémon Name'**
  String get pokemonNameLabel;

  /// No description provided for @pokemonTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get pokemonTypeLabel;

  /// No description provided for @pokemonLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get pokemonLevelLabel;

  /// No description provided for @pokemonPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get pokemonPriceLabel;

  /// No description provided for @pokemonDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get pokemonDescriptionLabel;

  /// No description provided for @pokemonUploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get pokemonUploadImage;

  /// No description provided for @submitButton.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @uploadErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during registration.'**
  String get uploadErrorMessage;

  /// No description provided for @fieldRequiredError.
  ///
  /// In en, this message translates to:
  /// **'Please fill out all fields.'**
  String get fieldRequiredError;

  /// No description provided for @priceInputHint.
  ///
  /// In en, this message translates to:
  /// **'Enter numbers only.'**
  String get priceInputHint;

  /// No description provided for @uploadSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Pokémon has been successfully listed.'**
  String get uploadSuccessMessage;

  /// No description provided for @candyRechargeTitle.
  ///
  /// In en, this message translates to:
  /// **'Recharge Candy'**
  String get candyRechargeTitle;

  /// No description provided for @candyBalance.
  ///
  /// In en, this message translates to:
  /// **'Current Balance'**
  String get candyBalance;

  /// No description provided for @rechargeAmount.
  ///
  /// In en, this message translates to:
  /// **'Select amount to recharge'**
  String get rechargeAmount;

  /// No description provided for @rechargeButton.
  ///
  /// In en, this message translates to:
  /// **'Recharge'**
  String get rechargeButton;

  /// No description provided for @rechargeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Candy successfully recharged!'**
  String get rechargeSuccess;

  /// No description provided for @rechargeFailed.
  ///
  /// In en, this message translates to:
  /// **'Recharge failed'**
  String get rechargeFailed;

  /// No description provided for @insufficientFunds.
  ///
  /// In en, this message translates to:
  /// **'Insufficient balance'**
  String get insufficientFunds;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method'**
  String get selectPaymentMethod;

  /// No description provided for @paymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Payment completed'**
  String get paymentSuccess;

  /// No description provided for @paymentCancel.
  ///
  /// In en, this message translates to:
  /// **'Payment cancelled'**
  String get paymentCancel;

  /// No description provided for @confirmRecharge.
  ///
  /// In en, this message translates to:
  /// **'Do you want to proceed with recharge?'**
  String get confirmRecharge;

  /// No description provided for @checkoutSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Purchase Complete!'**
  String get checkoutSuccessTitle;

  /// No description provided for @checkoutSuccessDesc.
  ///
  /// In en, this message translates to:
  /// **'Your Pokémon will be delivered soon.'**
  String get checkoutSuccessDesc;

  /// No description provided for @checkoutButtonHome.
  ///
  /// In en, this message translates to:
  /// **'Return to Home'**
  String get checkoutButtonHome;

  /// No description provided for @networkErrorText.
  ///
  /// In en, this message translates to:
  /// **'A network error occurred.'**
  String get networkErrorText;

  /// No description provided for @unknownErrorText.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred.'**
  String get unknownErrorText;

  /// No description provided for @retryText.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryText;

  /// No description provided for @itemNotFoundText.
  ///
  /// In en, this message translates to:
  /// **'Item does not exist.'**
  String get itemNotFoundText;

  /// No description provided for @itemCartButton.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get itemCartButton;

  /// No description provided for @itemCartAddedTitle.
  ///
  /// In en, this message translates to:
  /// **'The item has been added to the cart.'**
  String get itemCartAddedTitle;

  /// No description provided for @itemCartDialogDesc.
  ///
  /// In en, this message translates to:
  /// **'Would you like to go to your cart?'**
  String get itemCartDialogDesc;

  /// No description provided for @itemMoreBrowse.
  ///
  /// In en, this message translates to:
  /// **'Browse more'**
  String get itemMoreBrowse;

  /// No description provided for @itemGoToCart.
  ///
  /// In en, this message translates to:
  /// **'Go to cart'**
  String get itemGoToCart;

  /// No description provided for @itemBuyButton.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get itemBuyButton;

  /// Purchase confirmation message. {itemName} is the name of the item, {totalPrice} is the price, and {currency} is the currency symbol.
  ///
  /// In en, this message translates to:
  /// **'You have purchased {itemName} for {totalPrice}{currency}.'**
  String itemBuyComplete({
    required String itemName,
    required String totalPrice,
    required String currency,
  });

  /// No description provided for @quantityInputTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter Quantity'**
  String get quantityInputTitle;

  /// Error message for quantity input. {maxCount} is the maximum quantity.
  ///
  /// In en, this message translates to:
  /// **'Only numbers between 1 and {maxCount} are allowed.'**
  String quantityInputError({required int maxCount});
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ko':
      return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
