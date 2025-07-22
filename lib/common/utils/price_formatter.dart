import 'package:intl/intl.dart';

/// 주어진 가격을 지역(locale)에 맞게 숫자만 포맷팅해서 반환
String formatPriceValue(double price, String locale) {
  final numberFormat = NumberFormat.simpleCurrency(locale: locale);
  return numberFormat.format(price).replaceAll(numberFormat.currencySymbol, '').trim();
}

/// 지역(locale)에 맞는 통화 기호를 반환
String getCurrencySymbol(String locale) {
  final isKorean = locale.startsWith('ko');
  final numberFormat = NumberFormat.simpleCurrency(locale: locale);
  return isKorean ? '원' : numberFormat.currencySymbol;
}
