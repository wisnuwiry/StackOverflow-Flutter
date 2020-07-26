import 'package:flutter/material.dart';

import '../../../common.dart';

/// User item widget card
class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(Dimens.dp16),
        child: Column(
          children: [
            UserAvatar(
              url:
                  'https://images.unsplash.com/photo-1586297098710-0382a496c814?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
              radius: Dimens.mediumAvatarSize,
            ),
            SizedBox(height: Dimens.dp8),
            _buildBadge(),
            SizedBox(height: Dimens.dp8),
            _buildInfoText(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Badge(text: '234', color: AppColors.goldColor),
        SizedBox(width: Dimens.dp4),
        Badge(text: '234', color: AppColors.silverColor),
        SizedBox(width: Dimens.dp4),
        Badge(text: '234', color: AppColors.bronzeColor),
      ],
    );
  }

  Widget _buildInfoText(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleText('Wisnu Saputra'),
        SizedBox(height: Dimens.dp4),
        SmallText(
          'Jepara, Indonesia',
          style: TextStyle(color: Theme.of(context).disabledColor),
        ),
      ],
    );
  }
}
