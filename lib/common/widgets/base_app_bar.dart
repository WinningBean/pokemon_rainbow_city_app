import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';

/// 기본 AppBar 위젯
/// 앱 전반에서 일관된 스타일을 제공하는 AppBar
/// title, actions, leading 아이콘 등을 커스터마이즈할 수 있음
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final EdgeInsetsGeometry contentPadding;
  final double iconSize;
  final Color? backgroundColor;

  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle = true,
    this.automaticallyImplyLeading = true,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.iconSize = 24.0,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: AppBar(
        title: title != null ? Text(title!) : null,
        centerTitle: centerTitle,
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading && Navigator.canPop(context)
            ? IconButton(
                icon: const Icon(CustomIcons.chevronLeft),
                onPressed: () => Navigator.of(context).maybePop(),
              )
            : null,
        actions: actions,
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
        iconTheme: IconThemeData(size: iconSize),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54.0);
}
