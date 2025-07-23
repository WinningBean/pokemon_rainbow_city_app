import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_rainbow_city_app/core/theme/app_color_alias.dart';

///  라벨달린 텍스트박스
class LabeledTextBox extends StatelessWidget {
  final String title;
  final String? hintText;
  final double height;
  final String? unit;
  final bool isNumber;
  final TextEditingController? controller;
  final TextStyle? hintTextStyle;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final Color? borderColor;

  const LabeledTextBox({
    super.key,
    required this.title,
    this.hintText,
    this.height = 48,
    this.unit,
    this.isNumber = false,
    this.controller,
    this.hintTextStyle,
    this.textAlign = TextAlign.left,
    this.inputFormatters,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMultiLine = height > 60;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(color: AppColorAlias.foundationPrimary),
        ),
        const SizedBox(height: 8),
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor ?? AppColorAlias.foundationLine),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  maxLines: isMultiLine ? null : 1,
                  expands: isMultiLine,
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: textAlign,
                  keyboardType: isNumber ? TextInputType.number : TextInputType.text,
                  inputFormatters:
                      inputFormatters ??
                      (isNumber ? [FilteringTextInputFormatter.digitsOnly] : null),
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.only(left: 16, top: isMultiLine ? 8 : 0),
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle:
                        hintTextStyle ??
                        Theme.of(
                          context,
                        ).textTheme.labelSmall?.copyWith(color: AppColorAlias.foundationLine),
                  ),
                ),
              ),
              if (unit != null)
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Text(unit!, style: Theme.of(context).textTheme.labelSmall),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
