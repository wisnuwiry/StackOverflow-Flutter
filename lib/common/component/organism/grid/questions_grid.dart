import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../common.dart';
import '../../component.dart';

/// Widget list or grid, can show grid QuestionCard
class QuestionsGrid extends StatelessWidget {
  ///
  final int count;
  /// Function if you tapped item [QuestionCard]
  final VoidCallback onTapItem;

  ///
  const QuestionsGrid({Key key, this.count, this.onTapItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.builder(
      shrinkWrap: true,
      itemCount: count ?? 6,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(0),
      gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            (Dimens.width(context) ~/ Dimens.minQuestionWidthSize) < 1
                ? 1
                : (Dimens.width(context) ~/ Dimens.minQuestionWidthSize),
        staggeredTileBuilder: (_) => StaggeredTile.fit(1),
        staggeredTileCount: count ?? 6,
      ),
      itemBuilder: (_, i) {
        return QuestionCard(
          onTap: onTapItem,
        );
      },
    );
  }
}
