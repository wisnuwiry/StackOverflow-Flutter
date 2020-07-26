import 'package:flutter/material.dart';

import '../../common.dart';

/// Badge user can show in the [UserCard]
class Badge extends StatelessWidget {
  /// Badge Color
  final Color color;

  /// Nama badge
  final String text;

  /// Param text must input
  const Badge({Key key, this.color, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _baseColor;
    _baseColor = color ?? Theme.of(context).disabledColor;

    return Container(
      padding:
          EdgeInsets.symmetric(vertical: Dimens.dp4, horizontal: Dimens.dp8),
      decoration: BoxDecoration(
        color: _baseColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(Dimens.roundCard),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.whatshot,
            size: Dimens.dp12,
            color: _baseColor,
          ),
          SizedBox(width: Dimens.dp4),
          SmallText(text,
              style: TextStyle(fontWeight: FontWeight.bold, color: _baseColor))
        ],
      ),
    );
  }
}
