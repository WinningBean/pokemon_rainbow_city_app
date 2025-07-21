import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';

/// 기본 AppBar 위젯
/// 앱 전반에서 일관된 스타일을 제공하는 AppBar
/// title, actions, leading 아이콘 등을 커스터마이즈할 수 있음
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final double contentPadding;
  final Color? backgroundColor;

  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle = true,
    this.automaticallyImplyLeading = true,
    this.contentPadding = 16.0,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title!) : null,
      actionsPadding: EdgeInsets.symmetric(horizontal: contentPadding),
      titleSpacing: contentPadding,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      leading: (automaticallyImplyLeading && GoRouter.of(context).canPop())
          ? IconButton(icon: const Icon(CustomIcons.chevronLeft), onPressed: () => context.pop())
          : null,
      actions: actions,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      iconTheme: IconThemeData(size: 24.0),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54.0);
}
