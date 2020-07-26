import 'package:flutter/material.dart';

import '../../../common.dart';

/// Question item card
class QuestionCard extends StatelessWidget {
  /// Call if you tapped this component card
  final VoidCallback onTap;

  ///
  const QuestionCard({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(Dimens.dp16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              Divider(height: Dimens.dp32),
              TitleText(
'Flutter initializing an object from firestore before widget builds',
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              SizedBox(height: Dimens.dp32),
              _buildAction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserInfo(),
        SizedBox(
            height: Dimens.dp32,
            width: Dimens.dp32,
            child: IconButton(
                icon: Icon(Icons.share,
                    size: Dimens.dp16, color: AppColors.primaryColor),
                onPressed: () {
                  // TODO: add action to share question item
                }))
      ],
    );
  }

  Widget _buildAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PostActionButton(
          icon: Icons.visibility,
          text: '23743',
          onPressed: () {},
        ),
        PostActionButton(
          icon: Icons.chat_bubble,
          text: '23743',
          color: AppColors.successColor,
          onPressed: () {},
        ),
        PostActionButton(
          icon: Icons.card_giftcard,
          text: '23743',
          onPressed: () {},
        ),
      ],
    );
  }
}
