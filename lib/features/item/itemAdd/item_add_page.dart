import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_color_alias.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemAdd/wigets/label_text_box.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 아이템 추가 페이지
class ItemAddlPage extends StatelessWidget {
  const ItemAddlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: BaseAppBar(
        actions: [
          Text(
            "등록하기",
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: AppColorAlias.brandPrimary),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),

              /// 점선 테두리 이미지 등록 박스 (3.1.0 기준)
              GestureDetector(
                onTap: () {},
                child: DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    color: AppColorAlias.foundationLine,
                    strokeWidth: 2,
                    dashPattern: [5, 5],
                    padding: EdgeInsets.all(16),
                    radius: Radius.circular(16),
                  ),

                  child: Container(
                    width: double.infinity,
                    height: 245,
                    alignment: Alignment.center,
                    child: Text(
                      "이미지를 등록해 주세요.",
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(color: AppColorAlias.foundationLine),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              LabeledTextBox(title: "제품 명", hintText: "제품명을 입력해주세요"),
              const SizedBox(height: 20),

              LabeledTextBox(title: "상세 설명", hintText: "상세 설명을 입력해주세요", height: 202),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: LabeledTextBox(title: "수량", unit: "개", isNumber: true),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LabeledTextBox(title: "가격", unit: "원", isNumber: true),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
