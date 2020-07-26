import 'package:flutter/material.dart';

import '../../../common.dart';

/// Example use:
/// ```dart
/// HeadingText(
///   'Your Text',
///   style: ,
/// )
/// ```
class HeadingText extends StatelessWidget {
  /// String text data in widget, this data text required
  final String text;
  /// TextStyle in text widget, 
  /// with default style `Theme.of(context).textTheme.headline5`
  final TextStyle style;
  /// max line in text, if over can hide text
  final int maxLine;
  /// Overflow text style
  final TextOverflow overflow;
  /// Align text
  final TextAlign align;

  /// In text param must not null, this field required
  const HeadingText(
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
      style: style?.copyWith(fontSize: Dimens.dp22) ??
          Theme.of(context).textTheme.headline5,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
