import 'package:flutter/material.dart';

import '../../../common.dart';

/// very small text style in app
class SmallText extends StatelessWidget {
  /// String text data in widget, this data text required
  final String text;

  /// TextStyle in text widget,
  /// with default style 
  /// `Theme.of(context).textTheme.bodyText2.copyWith(fontSize: Dimens.dp10)`
  final TextStyle style;

  /// max line in text, if over can hide text
  final int maxLine;

  /// Overflow text style
  final TextOverflow overflow;

  /// Align text
  final TextAlign align;

  /// In text param must not null, this field required
  const SmallText(
    this.text, {
    Key key,
    this.style,
    this.maxLine,
    this.overflow,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(fontSize: Dimens.dp10) ??
          Theme.of(context).textTheme.bodyText2.copyWith(fontSize: Dimens.dp10),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
