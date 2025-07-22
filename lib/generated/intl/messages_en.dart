// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(itemName, totalPrice, currency) =>
      "You have purchased ${itemName} for ${totalPrice}${currency}.";

  static String m1(maxCount) =>
      "Only numbers between 1 and ${maxCount} are allowed.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("Pokémon Rainbow City"),
    "backText": MessageLookupByLibrary.simpleMessage("Back"),
    "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
    "cancelText": MessageLookupByLibrary.simpleMessage("Cancel"),
    "candyBalance": MessageLookupByLibrary.simpleMessage("Current Balance"),
    "candyRechargeTitle": MessageLookupByLibrary.simpleMessage(
      "Recharge Candy",
    ),
    "cartCheckoutButton": MessageLookupByLibrary.simpleMessage("Checkout"),
    "cartEmptyText": MessageLookupByLibrary.simpleMessage(
      "Your cart is empty.",
    ),
    "cartRemoveItem": MessageLookupByLibrary.simpleMessage("Remove"),
    "cartTitle": MessageLookupByLibrary.simpleMessage("Cart"),
    "cartTotalLabel": MessageLookupByLibrary.simpleMessage("Total"),
    "checkoutButtonHome": MessageLookupByLibrary.simpleMessage(
      "Return to Home",
    ),
    "checkoutSuccessDesc": MessageLookupByLibrary.simpleMessage(
      "Your Pokémon will be delivered soon.",
    ),
    "checkoutSuccessTitle": MessageLookupByLibrary.simpleMessage(
      "Purchase Complete!",
    ),
    "closeText": MessageLookupByLibrary.simpleMessage("Close"),
    "confirmRecharge": MessageLookupByLibrary.simpleMessage(
      "Do you want to proceed with recharge?",
    ),
    "confirmText": MessageLookupByLibrary.simpleMessage("Confirm"),
    "fieldRequiredError": MessageLookupByLibrary.simpleMessage(
      "Please fill out all fields.",
    ),
    "goToShop": MessageLookupByLibrary.simpleMessage("Go buy Pokémon"),
    "goodsEmptyText": MessageLookupByLibrary.simpleMessage(
      "No Pokémon available",
    ),
    "goodsListTitle": MessageLookupByLibrary.simpleMessage("Pokémon List"),
    "goodsRegistration": MessageLookupByLibrary.simpleMessage(
      "Do you want to register a Pokémon?",
    ),
    "goodsSearchHint": MessageLookupByLibrary.simpleMessage(
      "Search by Pokémon name.",
    ),
    "insufficientFunds": MessageLookupByLibrary.simpleMessage(
      "Insufficient balance",
    ),
    "itemBuyButton": MessageLookupByLibrary.simpleMessage("Buy"),
    "itemBuyComplete": m0,
    "itemCartAddedTitle": MessageLookupByLibrary.simpleMessage(
      "The item has been added to the cart.",
    ),
    "itemCartButton": MessageLookupByLibrary.simpleMessage("Add to Cart"),
    "itemCartDialogDesc": MessageLookupByLibrary.simpleMessage(
      "Would you like to go to your cart?",
    ),
    "itemGoToCart": MessageLookupByLibrary.simpleMessage("Go to cart"),
    "itemListEmptyText": MessageLookupByLibrary.simpleMessage(
      "No items available.",
    ),
    "itemMoreBrowse": MessageLookupByLibrary.simpleMessage("Browse more"),
    "itemNotFoundText": MessageLookupByLibrary.simpleMessage(
      "Item does not exist.",
    ),
    "itemRemainingCountLabel": MessageLookupByLibrary.simpleMessage(
      "Remaining quantity:",
    ),
    "loadingText": MessageLookupByLibrary.simpleMessage("Loading..."),
    "mainGoToShop": MessageLookupByLibrary.simpleMessage("Go to Pokémon Shop"),
    "mainSubtitle": MessageLookupByLibrary.simpleMessage(
      "Discover today\'s Pokémon!",
    ),
    "mainTitle": MessageLookupByLibrary.simpleMessage(
      "Rainbow City Pokémon Market",
    ),
    "networkErrorText": MessageLookupByLibrary.simpleMessage(
      "A network error occurred.",
    ),
    "okText": MessageLookupByLibrary.simpleMessage("Got it"),
    "onboardingText": MessageLookupByLibrary.simpleMessage(
      "Shall we go buy some Pokémon before we start our journey?",
    ),
    "paymentCancel": MessageLookupByLibrary.simpleMessage("Payment cancelled"),
    "paymentSuccess": MessageLookupByLibrary.simpleMessage("Payment completed"),
    "pokemonDescriptionLabel": MessageLookupByLibrary.simpleMessage(
      "Description",
    ),
    "pokemonLevelLabel": MessageLookupByLibrary.simpleMessage("Level"),
    "pokemonNameLabel": MessageLookupByLibrary.simpleMessage("Pokémon Name"),
    "pokemonPriceLabel": MessageLookupByLibrary.simpleMessage("Price"),
    "pokemonTypeLabel": MessageLookupByLibrary.simpleMessage("Type"),
    "pokemonUploadImage": MessageLookupByLibrary.simpleMessage("Upload Image"),
    "priceInputHint": MessageLookupByLibrary.simpleMessage(
      "Enter numbers only.",
    ),
    "quantityInputError": m1,
    "quantityInputTitle": MessageLookupByLibrary.simpleMessage(
      "Enter Quantity",
    ),
    "rechargeAmount": MessageLookupByLibrary.simpleMessage(
      "Select amount to recharge",
    ),
    "rechargeButton": MessageLookupByLibrary.simpleMessage("Recharge"),
    "rechargeFailed": MessageLookupByLibrary.simpleMessage("Recharge failed"),
    "rechargeSuccess": MessageLookupByLibrary.simpleMessage(
      "Candy successfully recharged!",
    ),
    "registerPokemonSubtitle": MessageLookupByLibrary.simpleMessage(
      "Enter the details of your Pokémon",
    ),
    "registerPokemonTitle": MessageLookupByLibrary.simpleMessage(
      "Register Pokémon",
    ),
    "retryText": MessageLookupByLibrary.simpleMessage("Retry"),
    "searchHintText": MessageLookupByLibrary.simpleMessage(
      "Enter search term.",
    ),
    "selectPaymentMethod": MessageLookupByLibrary.simpleMessage(
      "Select Payment Method",
    ),
    "submitButton": MessageLookupByLibrary.simpleMessage("Submit"),
    "unknownErrorText": MessageLookupByLibrary.simpleMessage(
      "An unknown error occurred.",
    ),
    "uploadErrorMessage": MessageLookupByLibrary.simpleMessage(
      "An error occurred during registration.",
    ),
    "uploadSuccessMessage": MessageLookupByLibrary.simpleMessage(
      "Pokémon has been successfully listed.",
    ),
  };
}
