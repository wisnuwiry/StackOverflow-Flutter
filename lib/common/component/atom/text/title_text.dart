import 'package:flutter/material.dart';

import '../../../common.dart';

/// Title Text, default font
class TitleText extends StatelessWidget {
  /// String text data in widget, this data text required
  final String text;

  /// TextStyle in text widget, 
  /// default style `Theme.of(context).textTheme.headline6`
  final TextStyle style;

  /// max line in text, if over can hide text
  final int maxLine;

  /// Overflow text style
  final TextOverflow overflow;

  /// Align text
  final TextAlign align;

  /// In text param must not null, this field required
  const TitleText(
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
      style: style?.copyWith(fontSize: Dimens.dp16) ??
          Theme.of(context).textTheme.headline6,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
