import 'package:flutter/material.dart';

import '../../common.dart';

/// Tag item, in question card
class TagItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'JavaScript',
        style: TextStyle(
            fontWeight: FontWeight.w500),
      ),
      padding:
          EdgeInsets.symmetric(vertical: Dimens.dp8, horizontal: Dimens.dp14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.dp4),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
