import 'package:flutter/material.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/appBar/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/core/icons/custom_icons.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

/// 검색 중일 때 사용하는 AppBar
class SearchBaseAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double contentPadding;
  final Color? backgroundColor;
  final EdgeInsets? outerPadding;
  final String? hintText;
  final VoidCallback? onTapOutside;
  final ValueChanged<String>? onSearch;

  const SearchBaseAppBar({
    super.key,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.contentPadding = 16.0,
    this.backgroundColor,
    this.outerPadding,
    this.hintText,
    this.onTapOutside,
    this.onSearch,
  });

  @override
  Size get preferredSize => const Size.fromHeight(54.0);

  @override
  State<SearchBaseAppBar> createState() => _SearchBaseAppBarState();
}

class _SearchBaseAppBarState extends State<SearchBaseAppBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // 추가
  bool _showHintErrorColor = false;

  void _handleSearch() {
    final value = _controller.text.trim();
    if (value.isEmpty) {
      setState(() {
        _showHintErrorColor = true;
      });
      _focusNode.requestFocus(); // 포커스 유지
    } else {
      setState(() {
        _showHintErrorColor = false;
      });
      FocusScope.of(context).unfocus(); // 키보드 닫기
      widget.onSearch?.call(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.onTapOutside,
      child: BaseAppBar(
        automaticallyImplyLeading: widget.automaticallyImplyLeading,
        contentPadding: widget.contentPadding,
        outerPadding: widget.outerPadding,
        title: TextField(
          controller: _controller,
          focusNode: _focusNode, // 연결
          autofocus: true,
          textInputAction: TextInputAction.search,
          onSubmitted: (_) => _handleSearch(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            hintText: widget.hintText ?? local.searchHintText,
            hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: _showHintErrorColor
                  ? Theme.of(context).colorScheme.error
                  : Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline),
            ),
            suffixIcon: IconButton(
              icon: const Icon(CustomIcons.search, size: 24),
              onPressed: _handleSearch,
            ),
          ),
        ),
        actions: widget.actions,
        backgroundColor: widget.backgroundColor,
      ),
    );
  }
}
