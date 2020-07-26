import 'package:flutter/material.dart';

import '../../../common.dart';
import '../../component.dart';

/// Widget can show list User Card
class UsersList extends StatelessWidget {
  ///
  final int count;

  /// Default padding only in horizontal
  /// `EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding)`
  final EdgeInsets padding;

  ///
  const UsersList({Key key, this.count, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.heightUsersList,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: padding ??
            EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
        itemBuilder: (_, i) {
          return UserCard();
        },
        itemCount: count ?? 4,
      ),
    );
  }
}
