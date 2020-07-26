import 'package:flutter/material.dart';

import '../../../common.dart';
import '../../component.dart';

/// Widget show all Tags with list style
class AnswersList extends StatelessWidget {
  ///
  final int count;

  const AnswersList({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (_, i) {
        return AnswerCard();
      },
      itemCount: count ?? 6,
    );
  }
}
