import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
    return SingleChildScrollView(
        padding: padding ??
            EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard(),
            UserCard()
          ],
        ));
  }
}
