import 'package:flutter/material.dart';

import '../../common.dart';

/// SearchBar widget in header
class SearchBar extends StatelessWidget {
  /// wihFilter default value = false
  final bool withFilter, readOnly;

  /// Controller text
  final TextEditingController controller;

  /// FocusNode
  final FocusNode focusNode;

  /// When filter button tap/press
  final VoidCallback onFilterPressed;

  /// Action when tapped widget
  final VoidCallback onTap;

  ///
  const SearchBar(
      {Key key,
      this.withFilter = false,
      this.controller,
      this.focusNode,
      this.readOnly,
      this.onFilterPressed,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: Dimens.dp12,
                  color: Theme.of(context).disabledColor.withOpacity(0.2),
                  offset: Offset(0, Dimens.dp6)),
            ]),
            child: TextForm(
              controller: controller,
              focusNode: focusNode,
              hintText: 'Search..',
              readOnly: readOnly,
              onTap: onTap,
              prefixIcon: Icon(
                Icons.search,
                size: Dimens.dp20,
                color: AppColors.primaryColor,
              ),
              suffixIcon: withFilter ? _buildFilterBtn() : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterBtn() {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.dp4),
      onTap: onFilterPressed ?? onTap,
      child: Container(
          margin: EdgeInsets.all(Dimens.dp4),
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(Dimens.dp4),
              boxShadow: [
                BoxShadow(
                    blurRadius: Dimens.dp4,
                    color: AppColors.primaryColor,
                    offset: Offset(0, Dimens.dp2))
              ]),
          child: Icon(Icons.sort, color: Colors.white)),
    );
  }
}
