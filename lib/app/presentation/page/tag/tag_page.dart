import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class TagPage extends StatefulWidget {
  @override
  _TagPageState createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  int _groupValueSliding = 0;

  List<String> _listSlidingData = ['First', 'Second', 'Thrid'];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        _buildHeader(),
        SliverPadding(
          padding: EdgeInsets.all(Dimens.horizontalPadding),
          sliver: SliverList(
              delegate: SliverChildListDelegate([
            _buildSliding(),
            SizedBox(height: Dimens.dp16),
            _buildListTags(),
          ])),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      primary: true,
      expandedHeight: 60,
      elevation: 0,
      flexibleSpace: Container(
        height: 80,
        padding:
            const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            SearchBar(
              withFilter: true,
              onFilterPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliding() {
    Map<int, Widget> _data = {};
    _listSlidingData.asMap()
      ..forEach((key, value) {
        _data.addAll({
          key: Text(
            '$value',
            style: TextStyle(
                color: key == _groupValueSliding
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyText2.color),
          )
        });
      });

    return CupertinoSlidingSegmentedControl(
      thumbColor: AppColors.primaryColor,
      backgroundColor: Theme.of(context).cardColor,
      children: _data,
      groupValue: _groupValueSliding,
      onValueChanged: (v) {
        setState(() {
          _groupValueSliding = v;
        });
      },
    );
  }

  Widget _buildListTags() {
    return TagsGrid();
  }
}
