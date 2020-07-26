import 'package:flutter/material.dart';

import '../../../common.dart';

/// This widget same widget Text, on default style
/// Example:
/// 
/// ```dart
/// BodyText(
///  'Some Text',
/// 
/// )
/// ```
class BodyText extends StatelessWidget {
  /// This is required your input
  /// Text data can result in this widget [BodyText],
  /// this same property data in widget [Text]
  final String text;
  /// TextStyle for your custom widget text, 
  /// default value with style `Theme.of(context).textTheme.bodyText1`
  final TextStyle style;
  /// [maxLine] is optional, if you input, 
  /// your text want show line in maxLine, 
  /// if line text>maxLine, text overflow can't show
  final int maxLine;
  /// Style overflow text
  final TextOverflow overflow;
  /// Align your text
  final TextAlign align;

  /// In text param must not null, this field required
  const BodyText(
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
      style: style?.copyWith(fontSize: Dimens.dp12) ??
          Theme.of(context).textTheme.bodyText1,
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
    );
  }
}
