import 'package:flutter/material.dart';

import '../../../common/common.dart';

class DetailQuestionPage extends StatefulWidget {
  @override
  _DetailQuestionPageState createState() => _DetailQuestionPageState();
}

class _DetailQuestionPageState extends State<DetailQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: _buildActionToAnswer(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          title: Text('Question'),
          floating: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.dp16),
                child: DetailQuestionCard()),
            SizedBox(height: Dimens.dp16),
            _buildAnswer(),
            _buildRelatedQuestion(),
            SizedBox(height: Dimens.whiteSpaceBottom),
          ]),
        ),
      ],
    );
  }

  Widget _buildAnswer() {
    return Section(
      title: 'Answer (15)',
      child: AnswersList(),
    );
  }

  Widget _buildRelatedQuestion(){
    return Section(
      title: 'Related Question',
      child: QuestionsGrid(
        count: 4,
      ),
    );
  }

  Widget _buildActionToAnswer(){
    return Padding(
      padding: const EdgeInsets.only(left: Dimens.dp32),
      child: FloatingActionAnswer(),
    );
  }
}
