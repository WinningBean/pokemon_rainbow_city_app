// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '포켓몬 무지개 시티';

  @override
  String get confirmText => '확인';

  @override
  String get cancelText => '취소';

  @override
  String get backText => '뒤로가기';

  @override
  String get okText => '알겠어요';

  @override
  String get closeText => '닫기';

  @override
  String get loadingText => '로딩 중…';

  @override
  String get mainTitle => '무지개 시티 포켓몬 마켓';

  @override
  String get mainSubtitle => '오늘의 포켓몬을 만나보세요!';

  @override
  String get mainGoToShop => '포켓몬 사러가기';

  @override
  String get goodsRegistration => '포켓몬을 등록 하시겠습니까?';

  @override
  String get goodsListTitle => '포켓몬 리스트';

  @override
  String get goodsSearchHint => '포켓몬 이름으로 검색하세요.';

  @override
  String get goodsEmptyText => '등록된 포켓몬이 없습니다.';

  @override
  String get cartTitle => '장바구니';

  @override
  String get cartEmptyText => '장바구니가 비어있습니다.';

  @override
  String get cartTotalLabel => '총 합계';

  @override
  String get cartCheckoutButton => '결제하기';

  @override
  String get cartRemoveItem => '삭제';

  @override
  String get registerPokemonTitle => '포켓몬 등록';

  @override
  String get registerPokemonSubtitle => '판매할 포켓몬 정보를 입력하세요.';

  @override
  String get pokemonNameLabel => '포켓몬 이름';

  @override
  String get pokemonTypeLabel => '타입';

  @override
  String get pokemonLevelLabel => '레벨';

  @override
  String get pokemonPriceLabel => '가격';

  @override
  String get pokemonDescriptionLabel => '설명';

  @override
  String get pokemonUploadImage => '이미지 업로드';

  @override
  String get submitButton => '등록하기';

  @override
  String get cancelButton => '취소';

  @override
  String get uploadErrorMessage => '등록 중 오류가 발생했습니다.';

  @override
  String get fieldRequiredError => '모든 항목을 입력해 주세요.';

  @override
  String get priceInputHint => '숫자만 입력하세요.';

  @override
  String get uploadSuccessMessage => 'Pokémon has been successfully listed.';

  @override
  String get candyRechargeTitle => '사탕 충전하기';

  @override
  String get candyBalance => '보유 사탕';

  @override
  String get rechargeAmount => '충전할 수량을 선택하세요';

  @override
  String get rechargeButton => '충전하기';

  @override
  String get rechargeSuccess => '사탕이 충전되었습니다!';

  @override
  String get rechargeFailed => '충전에 실패했습니다';

  @override
  String get insufficientFunds => '잔액이 부족합니다';

  @override
  String get selectPaymentMethod => '결제 수단 선택';

  @override
  String get paymentSuccess => '결제가 완료되었습니다';

  @override
  String get paymentCancel => '결제가 취소되었습니다';

  @override
  String get confirmRecharge => '이대로 충전하시겠습니까?';

  @override
  String get checkoutSuccessTitle => '결제 완료!';

  @override
  String get checkoutSuccessDesc => '포켓몬이 곧 배달됩니다.';

  @override
  String get checkoutButtonHome => '홈으로 돌아가기';

  @override
  String get networkErrorText => '네트워크 오류가 발생했습니다.';

  @override
  String get unknownErrorText => '알 수 없는 오류가 발생했습니다.';

  @override
  String get retryText => '다시 시도';

  @override
  String get onboardingText => '여행을 시작하기 전에 포켓몬을 사러가볼까?';

  @override
  String get goToShop => '포켓몬 사러가기';

  @override
  String get itemNotFoundText => '상품이 존재하지 않습니다.';

  @override
  String get itemCartButton => '장바구니에 넣기';

  @override
  String get itemCartAddedTitle => '상품이 장바구니에 담겼습니다.';

  @override
  String get itemCartDialogDesc => '장바구니로 이동하시겠습니까?';

  @override
  String get itemMoreBrowse => '더 둘러보기';

  @override
  String get itemGoToCart => '장바구니가기';

  @override
  String get itemBuyButton => '구매하기';

  @override
  String itemBuyComplete({
    required String itemName,
    required String totalPrice,
    required String currency,
  }) {
    return '$itemName을(를) $totalPrice$currency 만큼 구매하셨습니다.';
  }

  @override
  String get quantityInputTitle => '수량 입력';

  @override
  String quantityInputError({required int maxCount}) {
    return '1부터 $maxCount 사이의 숫자만 입력할 수 있습니다.';
  }

  @override
  String get itemRemainingCountLabel => '남은 수량 :';

  @override
  String get itemListEmptyText => '상품 목록이 없습니다.';

  @override
  String get searchHintText => '검색어를 입력해주세요.';
}
