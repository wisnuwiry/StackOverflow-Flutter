import 'package:flutter/material.dart';

import '../../common.dart';

/// Info user profile and reputation in heading question card and answer card
class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        UserAvatar(
            url:
                'https://images.unsplash.com/photo-1586297098710-0382a496c814?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
        SizedBox(width: Dimens.dp6),
        _buildTextInfo(),
      ],
    );
  }

  Widget _buildTextInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText(
          'Wisnu Saputra',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: Dimens.dp6),
        Row(
          children: [
            _buildReputation(),
            SizedBox(width: Dimens.dp6),
            _buildTimePost(),
          ],
        ),
      ],
    );
  }

  Widget _buildReputation() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.whatshot, color: AppColors.primaryColor, size: Dimens.dp12),
        SizedBox(width: Dimens.dp2),
        SmallText('234', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildTimePost() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.timelapse,
            color: Theme.of(context).disabledColor, size: Dimens.dp12),
        SizedBox(width: Dimens.dp2),
        SmallText('2 hours ago',
            style: TextStyle(color: Theme.of(context).disabledColor)),
      ],
    );
  }
}
