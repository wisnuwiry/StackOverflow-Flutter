import 'package:flutter/material.dart';

import '../../common.dart';

/// Section widget
/// This widget usually, use in home widget to section content
class Section extends StatelessWidget {
  /// Title section
  final String title;
  /// Child section / content
  final Widget child, actionMore;
  /// Padding in this widget section
  final EdgeInsets padding;

  ///
  const Section(
      {Key key,
      @required this.title,
      @required this.child,
      this.padding,
      this.actionMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: Dimens.horizontalPadding,
              right: Dimens.horizontalPadding,
              top: Dimens.dp16,
              bottom: Dimens.dp12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(title),
              actionMore ?? SizedBox(),
            ],
          ),
        ),
        Padding(
          padding: padding ??
              EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
          child: child,
        ),
      ],
    );
  }
}
