import 'package:flutter/material.dart';

import '../../../common.dart';
import '../../component.dart';

/// Widget show all Tags with list style
class TagsList extends StatelessWidget {
  ///
  final int count;

  /// Default padding only in horizontal 
  /// `EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding)`
  final EdgeInsets padding;

  ///
  const TagsList({Key key, this.count, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.heightTagsList,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: padding ??
            EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
        itemBuilder: (_, i) {
          return TagCard();
        },
        itemCount: count ?? 6,
      ),
    );
  }
}
