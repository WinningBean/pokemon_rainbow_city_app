// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(itemName, totalPrice, currency) =>
      "${itemName}을(를) ${totalPrice}${currency} 만큼 구매하셨습니다.";

  static String m1(maxCount) => "1부터 ${maxCount} 사이의 숫자만 입력할 수 있습니다.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("포켓몬 무지개 시티"),
    "backText": MessageLookupByLibrary.simpleMessage("뒤로가기"),
    "cancelButton": MessageLookupByLibrary.simpleMessage("취소"),
    "cancelText": MessageLookupByLibrary.simpleMessage("취소"),
    "candyBalance": MessageLookupByLibrary.simpleMessage("보유 사탕"),
    "candyRechargeTitle": MessageLookupByLibrary.simpleMessage("사탕 충전하기"),
    "cartCheckoutButton": MessageLookupByLibrary.simpleMessage("결제하기"),
    "cartEmptyText": MessageLookupByLibrary.simpleMessage("장바구니가 비어있습니다."),
    "cartRemoveItem": MessageLookupByLibrary.simpleMessage("삭제"),
    "cartTitle": MessageLookupByLibrary.simpleMessage("장바구니"),
    "cartTotalLabel": MessageLookupByLibrary.simpleMessage("총 합계"),
    "checkoutButtonHome": MessageLookupByLibrary.simpleMessage("홈으로 돌아가기"),
    "checkoutSuccessDesc": MessageLookupByLibrary.simpleMessage(
      "포켓몬이 곧 배달됩니다.",
    ),
    "checkoutSuccessTitle": MessageLookupByLibrary.simpleMessage("결제 완료!"),
    "closeText": MessageLookupByLibrary.simpleMessage("닫기"),
    "confirmRecharge": MessageLookupByLibrary.simpleMessage("이대로 충전하시겠습니까?"),
    "confirmText": MessageLookupByLibrary.simpleMessage("확인"),
    "fieldRequiredError": MessageLookupByLibrary.simpleMessage(
      "모든 항목을 입력해 주세요.",
    ),
    "goodsEmptyText": MessageLookupByLibrary.simpleMessage("등록된 포켓몬이 없습니다."),
    "goodsListTitle": MessageLookupByLibrary.simpleMessage("포켓몬 리스트"),
    "goodsRegistration": MessageLookupByLibrary.simpleMessage(
      "포켓몬을 등록 하시겠습니까?",
    ),
    "goodsSearchHint": MessageLookupByLibrary.simpleMessage("포켓몬 이름으로 검색하세요."),
    "insufficientFunds": MessageLookupByLibrary.simpleMessage("잔액이 부족합니다"),
    "itemBuyButton": MessageLookupByLibrary.simpleMessage("구매하기"),
    "itemBuyComplete": m0,
    "itemCartAddedTitle": MessageLookupByLibrary.simpleMessage(
      "상품이 장바구니에 담겼습니다.",
    ),
    "itemCartButton": MessageLookupByLibrary.simpleMessage("장바구니에 넣기"),
    "itemCartDialogDesc": MessageLookupByLibrary.simpleMessage(
      "장바구니로 이동하시겠습니까?",
    ),
    "itemGoToCart": MessageLookupByLibrary.simpleMessage("장바구니가기"),
    "itemMoreBrowse": MessageLookupByLibrary.simpleMessage("더 둘러보기"),
    "itemNotFoundText": MessageLookupByLibrary.simpleMessage("아이템이 존재하지 않습니다."),
    "loadingText": MessageLookupByLibrary.simpleMessage("로딩 중…"),
    "mainGoToShop": MessageLookupByLibrary.simpleMessage("포켓몬 사러가기"),
    "mainSubtitle": MessageLookupByLibrary.simpleMessage("오늘의 포켓몬을 만나보세요!"),
    "mainTitle": MessageLookupByLibrary.simpleMessage("무지개 시티 포켓몬 마켓"),
    "networkErrorText": MessageLookupByLibrary.simpleMessage(
      "네트워크 오류가 발생했습니다.",
    ),
    "okText": MessageLookupByLibrary.simpleMessage("알겠어요"),
    "paymentCancel": MessageLookupByLibrary.simpleMessage("결제가 취소되었습니다"),
    "paymentSuccess": MessageLookupByLibrary.simpleMessage("결제가 완료되었습니다"),
    "pokemonDescriptionLabel": MessageLookupByLibrary.simpleMessage("설명"),
    "pokemonLevelLabel": MessageLookupByLibrary.simpleMessage("레벨"),
    "pokemonNameLabel": MessageLookupByLibrary.simpleMessage("포켓몬 이름"),
    "pokemonPriceLabel": MessageLookupByLibrary.simpleMessage("가격"),
    "pokemonTypeLabel": MessageLookupByLibrary.simpleMessage("타입"),
    "pokemonUploadImage": MessageLookupByLibrary.simpleMessage("이미지 업로드"),
    "priceInputHint": MessageLookupByLibrary.simpleMessage("숫자만 입력하세요."),
    "quantityInputError": m1,
    "quantityInputTitle": MessageLookupByLibrary.simpleMessage("수량 입력"),
    "rechargeAmount": MessageLookupByLibrary.simpleMessage("충전할 수량을 선택하세요"),
    "rechargeButton": MessageLookupByLibrary.simpleMessage("충전하기"),
    "rechargeFailed": MessageLookupByLibrary.simpleMessage("충전에 실패했습니다"),
    "rechargeSuccess": MessageLookupByLibrary.simpleMessage("사탕이 충전되었습니다!"),
    "registerPokemonSubtitle": MessageLookupByLibrary.simpleMessage(
      "판매할 포켓몬 정보를 입력하세요.",
    ),
    "registerPokemonTitle": MessageLookupByLibrary.simpleMessage("포켓몬 등록"),
    "retryText": MessageLookupByLibrary.simpleMessage("다시 시도"),
    "selectPaymentMethod": MessageLookupByLibrary.simpleMessage("결제 수단 선택"),
    "submitButton": MessageLookupByLibrary.simpleMessage("등록하기"),
    "unknownErrorText": MessageLookupByLibrary.simpleMessage(
      "알 수 없는 오류가 발생했습니다.",
    ),
    "uploadErrorMessage": MessageLookupByLibrary.simpleMessage(
      "등록 중 오류가 발생했습니다.",
    ),
  };
}
