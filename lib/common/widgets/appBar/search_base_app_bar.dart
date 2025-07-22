import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 검색 중일 때 사용하는 AppBar
class SearchBaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double contentPadding;
  final Color? backgroundColor;
  final EdgeInsets? outerPadding;
  final String? hintText;
  final VoidCallback? onTapOutside;

  const SearchBaseAppBar({
    super.key,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.contentPadding = 16.0,
    this.backgroundColor,
    this.outerPadding,
    this.hintText,
    this.onTapOutside,
  });

  @override
  Size get preferredSize => const Size.fromHeight(54.0);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTapOutside,
      child: BaseAppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        contentPadding: contentPadding,
        outerPadding: outerPadding,
        title: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintText: hintText ?? local.searchHintText,
            hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline),
            ),
            suffixIcon: const Icon(CustomIcons.search, size: 24),
          ),
        ),
        actions: actions,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
