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

  const LabeledTextBox({
    required this.title,
    this.hintText,
    this.height = 48,
    this.unit,
    this.isNumber = false,
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
            border: Border.all(color: AppColorAlias.foundationLine),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  maxLines: isMultiLine ? null : 1,
                  expands: isMultiLine,
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: isNumber ? TextInputType.number : TextInputType.text,
                  inputFormatters: isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.only(left: 16, top: isMultiLine ? 8 : 0),
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: Theme.of(
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
