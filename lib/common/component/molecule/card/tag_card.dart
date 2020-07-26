import 'package:flutter/material.dart';

import '../../../common.dart';

/// Tag Card Item Widget
class TagCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
              child: Padding(
          padding: EdgeInsets.all(Dimens.dp16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                HeadingText('Javascript'),
                SizedBox(height: Dimens.dp20),
                _buildCount(context),
              ]),
        ),
      ),
    );
  }

  Widget _buildCount(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.question_answer,
          size: Dimens.dp16,
          color: AppColors.primaryColor,
        ),
        SizedBox(width: Dimens.dp8),
        BodyText('1243',
            style: TextStyle(
                color: Theme.of(context).disabledColor,
                fontWeight: FontWeight.bold))
      ],
    );
  }
}
