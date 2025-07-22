// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Pokémon Rainbow City`
  String get appTitle {
    return Intl.message(
      'Pokémon Rainbow City',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirmText {
    return Intl.message('Confirm', name: 'confirmText', desc: '', args: []);
  }

  /// `Cancel`
  String get cancelText {
    return Intl.message('Cancel', name: 'cancelText', desc: '', args: []);
  }

  /// `Back`
  String get backText {
    return Intl.message('Back', name: 'backText', desc: '', args: []);
  }

  /// `Got it`
  String get okText {
    return Intl.message('Got it', name: 'okText', desc: '', args: []);
  }

  /// `Close`
  String get closeText {
    return Intl.message('Close', name: 'closeText', desc: '', args: []);
  }

  /// `Loading...`
  String get loadingText {
    return Intl.message('Loading...', name: 'loadingText', desc: '', args: []);
  }

  /// `Rainbow City Pokémon Market`
  String get mainTitle {
    return Intl.message(
      'Rainbow City Pokémon Market',
      name: 'mainTitle',
      desc: '',
      args: [],
    );
  }

  /// `Discover today's Pokémon!`
  String get mainSubtitle {
    return Intl.message(
      'Discover today\'s Pokémon!',
      name: 'mainSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Go to Pokémon Shop`
  String get mainGoToShop {
    return Intl.message(
      'Go to Pokémon Shop',
      name: 'mainGoToShop',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to register a Pokémon?`
  String get goodsRegistration {
    return Intl.message(
      'Do you want to register a Pokémon?',
      name: 'goodsRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Pokémon List`
  String get goodsListTitle {
    return Intl.message(
      'Pokémon List',
      name: 'goodsListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search by Pokémon name.`
  String get goodsSearchHint {
    return Intl.message(
      'Search by Pokémon name.',
      name: 'goodsSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `No Pokémon available`
  String get goodsEmptyText {
    return Intl.message(
      'No Pokémon available',
      name: 'goodsEmptyText',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cartTitle {
    return Intl.message('Cart', name: 'cartTitle', desc: '', args: []);
  }

  /// `Your cart is empty.`
  String get cartEmptyText {
    return Intl.message(
      'Your cart is empty.',
      name: 'cartEmptyText',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get cartTotalLabel {
    return Intl.message('Total', name: 'cartTotalLabel', desc: '', args: []);
  }

  /// `Checkout`
  String get cartCheckoutButton {
    return Intl.message(
      'Checkout',
      name: 'cartCheckoutButton',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get cartRemoveItem {
    return Intl.message('Remove', name: 'cartRemoveItem', desc: '', args: []);
  }

  /// `Register Pokémon`
  String get registerPokemonTitle {
    return Intl.message(
      'Register Pokémon',
      name: 'registerPokemonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the details of your Pokémon`
  String get registerPokemonSubtitle {
    return Intl.message(
      'Enter the details of your Pokémon',
      name: 'registerPokemonSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Pokémon Name`
  String get pokemonNameLabel {
    return Intl.message(
      'Pokémon Name',
      name: 'pokemonNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get pokemonTypeLabel {
    return Intl.message('Type', name: 'pokemonTypeLabel', desc: '', args: []);
  }

  /// `Level`
  String get pokemonLevelLabel {
    return Intl.message('Level', name: 'pokemonLevelLabel', desc: '', args: []);
  }

  /// `Price`
  String get pokemonPriceLabel {
    return Intl.message('Price', name: 'pokemonPriceLabel', desc: '', args: []);
  }

  /// `Description`
  String get pokemonDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'pokemonDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get pokemonUploadImage {
    return Intl.message(
      'Upload Image',
      name: 'pokemonUploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submitButton {
    return Intl.message('Submit', name: 'submitButton', desc: '', args: []);
  }

  /// `Cancel`
  String get cancelButton {
    return Intl.message('Cancel', name: 'cancelButton', desc: '', args: []);
  }

  /// `An error occurred during registration.`
  String get uploadErrorMessage {
    return Intl.message(
      'An error occurred during registration.',
      name: 'uploadErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out all fields.`
  String get fieldRequiredError {
    return Intl.message(
      'Please fill out all fields.',
      name: 'fieldRequiredError',
      desc: '',
      args: [],
    );
  }

  /// `Enter numbers only.`
  String get priceInputHint {
    return Intl.message(
      'Enter numbers only.',
      name: 'priceInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Pokémon has been successfully listed.`
  String get uploadSuccessMessage {
    return Intl.message(
      'Pokémon has been successfully listed.',
      name: 'uploadSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Recharge Candy`
  String get candyRechargeTitle {
    return Intl.message(
      'Recharge Candy',
      name: 'candyRechargeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Current Balance`
  String get candyBalance {
    return Intl.message(
      'Current Balance',
      name: 'candyBalance',
      desc: '',
      args: [],
    );
  }

  /// `Select amount to recharge`
  String get rechargeAmount {
    return Intl.message(
      'Select amount to recharge',
      name: 'rechargeAmount',
      desc: '',
      args: [],
    );
  }

  /// `Recharge`
  String get rechargeButton {
    return Intl.message('Recharge', name: 'rechargeButton', desc: '', args: []);
  }

  /// `Candy successfully recharged!`
  String get rechargeSuccess {
    return Intl.message(
      'Candy successfully recharged!',
      name: 'rechargeSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Recharge failed`
  String get rechargeFailed {
    return Intl.message(
      'Recharge failed',
      name: 'rechargeFailed',
      desc: '',
      args: [],
    );
  }

  /// `Insufficient balance`
  String get insufficientFunds {
    return Intl.message(
      'Insufficient balance',
      name: 'insufficientFunds',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method`
  String get selectPaymentMethod {
    return Intl.message(
      'Select Payment Method',
      name: 'selectPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Payment completed`
  String get paymentSuccess {
    return Intl.message(
      'Payment completed',
      name: 'paymentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Payment cancelled`
  String get paymentCancel {
    return Intl.message(
      'Payment cancelled',
      name: 'paymentCancel',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to proceed with recharge?`
  String get confirmRecharge {
    return Intl.message(
      'Do you want to proceed with recharge?',
      name: 'confirmRecharge',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Complete!`
  String get checkoutSuccessTitle {
    return Intl.message(
      'Purchase Complete!',
      name: 'checkoutSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Pokémon will be delivered soon.`
  String get checkoutSuccessDesc {
    return Intl.message(
      'Your Pokémon will be delivered soon.',
      name: 'checkoutSuccessDesc',
      desc: '',
      args: [],
    );
  }

  /// `Return to Home`
  String get checkoutButtonHome {
    return Intl.message(
      'Return to Home',
      name: 'checkoutButtonHome',
      desc: '',
      args: [],
    );
  }

  /// `A network error occurred.`
  String get networkErrorText {
    return Intl.message(
      'A network error occurred.',
      name: 'networkErrorText',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get unknownErrorText {
    return Intl.message(
      'An unknown error occurred.',
      name: 'unknownErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retryText {
    return Intl.message('Retry', name: 'retryText', desc: '', args: []);
  }

  /// `Shall we go buy some Pokémon before we start our journey?`
  String get onboardingText {
    return Intl.message(
      'Shall we go buy some Pokémon before we start our journey?',
      name: 'onboardingText',
      desc: '',
      args: [],
    );
  }

  /// `Go buy Pokémon`
  String get goToShop {
    return Intl.message('Go buy Pokémon', name: 'goToShop', desc: '', args: []);
  }

  /// `Item does not exist.`
  String get itemNotFoundText {
    return Intl.message(
      'Item does not exist.',
      name: 'itemNotFoundText',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get itemCartButton {
    return Intl.message(
      'Add to Cart',
      name: 'itemCartButton',
      desc: '',
      args: [],
    );
  }

  /// `The item has been added to the cart.`
  String get itemCartAddedTitle {
    return Intl.message(
      'The item has been added to the cart.',
      name: 'itemCartAddedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to go to your cart?`
  String get itemCartDialogDesc {
    return Intl.message(
      'Would you like to go to your cart?',
      name: 'itemCartDialogDesc',
      desc: '',
      args: [],
    );
  }

  /// `Browse more`
  String get itemMoreBrowse {
    return Intl.message(
      'Browse more',
      name: 'itemMoreBrowse',
      desc: '',
      args: [],
    );
  }

  /// `Go to cart`
  String get itemGoToCart {
    return Intl.message('Go to cart', name: 'itemGoToCart', desc: '', args: []);
  }

  /// `Buy`
  String get itemBuyButton {
    return Intl.message('Buy', name: 'itemBuyButton', desc: '', args: []);
  }

  /// `You have purchased {itemName} for {totalPrice}{currency}.`
  String itemBuyComplete(String itemName, String totalPrice, String currency) {
    return Intl.message(
      'You have purchased $itemName for $totalPrice$currency.',
      name: 'itemBuyComplete',
      desc:
          'Purchase confirmation message. {itemName} is the name of the item, {totalPrice} is the price, and {currency} is the currency symbol.',
      args: [itemName, totalPrice, currency],
    );
  }

  /// `Enter Quantity`
  String get quantityInputTitle {
    return Intl.message(
      'Enter Quantity',
      name: 'quantityInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Only numbers between 1 and {maxCount} are allowed.`
  String quantityInputError(int maxCount) {
    return Intl.message(
      'Only numbers between 1 and $maxCount are allowed.',
      name: 'quantityInputError',
      desc:
          'Error message for quantity input. {maxCount} is the maximum quantity.',
      args: [maxCount],
    );
  }

  /// `Remaining quantity:`
  String get itemRemainingCountLabel {
    return Intl.message(
      'Remaining quantity:',
      name: 'itemRemainingCountLabel',
      desc: '',
      args: [],
    );
  }

  /// `No items available.`
  String get itemListEmptyText {
    return Intl.message(
      'No items available.',
      name: 'itemListEmptyText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
