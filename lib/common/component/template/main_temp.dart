import 'package:flutter/material.dart';

import '../../common.dart';

/// Template style with bottom nav and body
class MainTemp extends StatelessWidget {
  /// Current body widget
  final Widget body;

  /// index bottom nav
  final int currentPage;

  /// When botom Nav widget item pressed
  final ValueChanged<int> onChanged;

  ///
  const MainTemp(
      {Key key,
      @required this.body,
      this.currentPage,
      @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: onChanged,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor:
            Theme.of(context).textTheme.bodyText2.color.withOpacity(0.3),
        selectedItemColor: AppColors.primaryColor,
        unselectedLabelStyle: TextStyle(fontSize: Dimens.dp10),
        selectedLabelStyle: TextStyle(fontSize: Dimens.dp10),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: Text('Questions')),
          BottomNavigationBarItem(icon: Icon(Icons.label), title: Text('Tags')),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text('Users')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Home')),
        ],
      ),
    );
  }
}
