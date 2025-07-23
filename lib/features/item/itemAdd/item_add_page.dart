import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/dialog/confirm_dialog.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_color_alias.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemAdd/wigets/label_text_box.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/providers/item_list_provider.dart';
import 'package:pokemon_rainbow_city_app/features/item/models/item.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

// 수량 필드의 입력 제한 (최소 1 이상)
class MinOneDigitInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) return newValue;
    final int? value = int.tryParse(newValue.text);
    if (value == null || value < 1) {
      return oldValue;
    }
    return newValue;
  }
}

// 가격 필드의 입력 제한 (0 앞자리 제한: 단일 '0'은 허용, 두 번째 이상의 앞자리 0만 제거)
class NoLeadingZeroInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final String text = newValue.text;

    // '0' 하나만 입력된 경우는 허용
    if (text == '0') {
      return newValue;
    }

    // 두 자리 이상이고, 앞에 0이 있는 경우 앞자리 0만 제거
    if (text.length > 1 && text.startsWith('0')) {
      // 첫 번째만 남기고 나머지 0을 제거 (가장 왼쪽의 연속된 0을 하나만 남김)
      final String newText = text.replaceFirst(RegExp(r'^0+'), '');
      return TextEditingValue(
        text: newText.isEmpty ? '0' : newText,
        selection: TextSelection.collapsed(offset: newText.isEmpty ? 1 : newText.length),
      );
    }
    return newValue;
  }
}

/// 아이템 추가 페이지
class ItemAddPage extends ConsumerStatefulWidget {
  const ItemAddPage({super.key});

  @override
  ConsumerState<ItemAddPage> createState() => _ItemAddPageState();
}

class _ItemAddPageState extends ConsumerState<ItemAddPage> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final countController = TextEditingController();
  final priceController = TextEditingController();
  final imageUrlController = TextEditingController();
  String? imageUrl;
  bool isImageUrlValid = false;

  bool isNameEmpty = false;
  bool isCountEmpty = false;
  bool isPriceEmpty = false;

  @override
  void initState() {
    super.initState();
    _initListeners();
  }

  void _initListeners() {
    nameController.addListener(() {
      if (isNameEmpty && nameController.text.trim().isNotEmpty) {
        setState(() => isNameEmpty = false);
      }
    });
    countController.addListener(() {
      if (isCountEmpty && countController.text.trim().isNotEmpty) {
        final value = int.tryParse(countController.text.trim());
        if (value != null && value >= 1) {
          setState(() => isCountEmpty = false);
        }
      }
    });
    priceController.addListener(() {
      if (isPriceEmpty && priceController.text.trim().isNotEmpty) {
        setState(() => isPriceEmpty = false);
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    countController.dispose();
    priceController.dispose();
    imageUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final errorColor = Theme.of(context).colorScheme.error;

    return Scaffold(
      appBar: BaseAppBar(
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isNameEmpty = nameController.text.trim().isEmpty;
                isCountEmpty = countController.text.trim().isEmpty;
                isPriceEmpty = priceController.text.trim().isEmpty;
              });

              if (isNameEmpty || isCountEmpty || isPriceEmpty) {
                return;
              }

              final count = int.tryParse(countController.text) ?? 0;
              if (count < 1) {
                setState(() => isCountEmpty = true);
                return;
              }

              final newItem = Item(
                name: nameController.text,
                description: descriptionController.text,
                imageUrl:
                    imageUrl ??
                    'https://www.notion.so/image/attachment%3A3e4f1502-f164-47d7-90ed-9a6bdfa3dac4%3Aimage.png?table=block&id=2382dc3e-f514-8026-892a-e1882da0641a&spaceId=83c75a39-3aba-4ba4-a792-7aefe4b07895&width=960&userId=&cache=v2',
                count: count,
                price: double.tryParse(priceController.text) ?? 0,
              );
              ref.read(itemListProvider.notifier).addItem(newItem);
              context.pop();
            },
            child: Text(
              "등록하기",
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: AppColorAlias.brandPrimary),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 점선 테두리 이미지 등록 박스 (3.1.0 기준)
              GestureDetector(
                onTap: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => ConfirmDialog(
                      title: "이미지 URL 입력",
                      customContent: CupertinoTextField(
                        controller: imageUrlController,
                        placeholder: "https://example.com/image.png",
                        placeholderStyle: const TextStyle(color: CupertinoColors.systemGrey),
                      ),
                      onConfirm: () {
                        final url = imageUrlController.text.trim();
                        final uri = Uri.tryParse(url);
                        if (uri != null && uri.hasAbsolutePath) {
                          setState(() {
                            imageUrl = url;
                            isImageUrlValid = true;
                          });
                        } else {
                          setState(() {
                            imageUrl = null;
                            isImageUrlValid = false;
                          });
                        }
                        context.pop();
                      },
                    ),
                  );
                },
                child: DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    color: AppColorAlias.foundationLine,
                    strokeWidth: 2,
                    dashPattern: [5, 5],
                    padding: EdgeInsets.all(16),
                    radius: Radius.circular(16),
                  ),
                  child: Container(
                    height: 245,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: imageUrl != null && isImageUrlValid
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(imageUrl!, fit: BoxFit.cover),
                          )
                        : Text(
                            "이미지를 등록해 주세요.",
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(color: AppColorAlias.foundationLine),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              LabeledTextBox(
                title: "제품 명",
                hintText: "제품명을 입력해주세요",
                controller: nameController,
                hintTextStyle: isNameEmpty
                    ? Theme.of(context).textTheme.labelSmall?.copyWith(color: errorColor)
                    : null,
                borderColor: isNameEmpty ? errorColor : null,
              ),
              const SizedBox(height: 20),

              LabeledTextBox(
                title: "상세 설명",
                hintText: "상세 설명을 입력해주세요",
                height: 202,
                controller: descriptionController,
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: LabeledTextBox(
                      title: "수량",
                      unit: "개",
                      isNumber: true,
                      controller: countController,
                      hintTextStyle: isCountEmpty
                          ? Theme.of(context).textTheme.labelSmall?.copyWith(color: errorColor)
                          : null,
                      textAlign: TextAlign.right,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        MinOneDigitInputFormatter(),
                      ],
                      borderColor: isCountEmpty ? errorColor : null,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LabeledTextBox(
                      title: "가격",
                      unit: "원",
                      isNumber: true,
                      controller: priceController,
                      hintTextStyle: isPriceEmpty
                          ? Theme.of(context).textTheme.labelSmall?.copyWith(color: errorColor)
                          : null,
                      textAlign: TextAlign.right,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        NoLeadingZeroInputFormatter(),
                      ],
                      borderColor: isPriceEmpty ? errorColor : null,
                    ),
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
