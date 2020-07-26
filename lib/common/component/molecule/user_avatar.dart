import 'package:flutter/material.dart';

import '../../common.dart';

/// User image circle
class UserAvatar extends StatelessWidget {
  /// URL image address
  final String url;

  /// Radius size widget image
  final double radius;

  ///
  const UserAvatar({Key key, @required this.url, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).disabledColor,
      backgroundImage: NetworkImage(url),
      radius: radius ?? Dimens.minAvatarSize,
    );
  }
}
