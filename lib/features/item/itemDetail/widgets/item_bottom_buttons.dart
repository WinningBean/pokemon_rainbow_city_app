import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_filled_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_outlined_button.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialogs/confirm_dialog.dart';

class ItemBottomButtons extends StatelessWidget {
  static const double _buttonHeight = 54;
  static const double _sectionVerticalPadding = 8;
  static double get height => _buttonHeight + (_sectionVerticalPadding * 2);

  const ItemBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: _sectionVerticalPadding),
      child: Row(
        children: [
          Expanded(
            child: AppOutlinedButton(
              text: '장바구니에 넣기',
              height: _buttonHeight,
              onChanged: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmDialog(
                      title: '상품이 장바구니에 담겼습니다.',
                      content: '장바구니로 이동하시겠습니까?',
                      cancelText: '더 둘러보기',
                      confirmText: '장바구니가기',
                      onConfirm: () => context.pop(),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AppFilledButton(text: '구매하기', height: _buttonHeight, onChanged: () {}),
          ),
        ],
      ),
    );
  }
}
