import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../../../common/common.dart';
import '../cubit/cubit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Function to navigate [DetailQuestionPage]
  void _navigateToDetailQuestion() {
    Navigator.of(context).pushNamed(Routes.detailQuestion);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [_buildHeader(), _buildBody()],
    );
  }

  SliverAppBar _buildHeader() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 160,
      floating: true,
      primary: true,
      snap: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(
              left: Dimens.horizontalPadding,
              right: Dimens.horizontalPadding,
              top: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  HeadingText('StackOverflow'),
                  SizedBox(height: Dimens.dp4),
                  BodyText('Explore question and answer'),
                ],
              ),
              UserAvatar(
                  url:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=60&q=20')
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
          child: SearchBar(
            withFilter: true,
            readOnly: true,
            onTap: () => context.cubit<BottomNavCubit>().getQuestions(),
          ),
        ),
        preferredSize: Size.fromHeight(60),
      ),
    );
  }

  SliverList _buildBody() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Section(
          title: 'Popular Tags',
          actionMore: Text('Show more..',
              style: TextStyle(color: AppColors.primaryColor)),
          child: TagsList(count: 4),
          padding: EdgeInsets.all(0),
        ),
        Section(
            title: 'Top Question',
            actionMore: Text('Show more..',
                style: TextStyle(color: AppColors.primaryColor)),
            child: QuestionsGrid(
              onTapItem: _navigateToDetailQuestion,
            )),
        Section(
          title: 'Top User',
          actionMore: Text('Show more..',
              style: TextStyle(color: AppColors.primaryColor)),
          child: UsersList(),
          padding: EdgeInsets.all(0),
        ),
        SizedBox(height: Dimens.whiteSpaceBottom),
      ]),
    );
  }
}
