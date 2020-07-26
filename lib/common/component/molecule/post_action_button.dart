import 'package:flutter/material.dart';

import '../../common.dart';

/// Widget button action, in item post question, or answer
/// For example this widget can use LikeButton, CommentButton 
/// in Item Post question or answer
class PostActionButton extends StatelessWidget {
  /// Action when button tap/pressed
  final VoidCallback onPressed;
  /// Icon data in button
  final IconData icon;
  /// Title widget button
  final String text;
  /// Button color and text
  final Color color;

  /// Param onPressed, icon, text required
  const PostActionButton(
      {Key key,
      @required this.onPressed,
      @required this.icon,
      @required this.text,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _defaultColor;
    _defaultColor = color ?? Theme.of(context).disabledColor;
    
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.dp16),
      onTap: onPressed,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: Dimens.dp6, horizontal: Dimens.dp16),
        decoration: BoxDecoration(
          color: color?.withOpacity(0.1),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        child: Row(
          children: [
            Icon(icon, color: _defaultColor, size: Dimens.dp16),
            SizedBox(width: Dimens.dp6),
            BodyText(text,
                style: TextStyle(
                    color: _defaultColor, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
