import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../../../../common/common.dart';
import '../../presentation.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CubitProvider(
      create: (context) => BottomNavCubit(),
      child: _MainPage(),
    );
  }
}

class _MainPage extends StatefulWidget {
  @override
  __MainPageState createState() => __MainPageState();
}

class __MainPageState extends State<_MainPage> {
  BottomNavCubit _cubit;

  @override
  void initState() {
    _cubit = context.cubit<BottomNavCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CubitBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return MainTemp(
          body: _buildBody(state),
          currentPage: state,
          onChanged: _onChangeBottomNav,
        );
      },
    );
  }

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return HomePage();
        break;
      case 1:
        return QuestionPage();
        break;
      case 2:
        return TagPage();
        break;
      case 3:
        return Center(child: Text('Hello World'));
        break;
      case 4:
        return Center(child: Text('Hello World'));
        break;
      default:
        return Center(child: Text('Hello World'));
    }
  }

  void _onChangeBottomNav(int index) {
    switch (index) {
      case 0:
        _cubit.getHome();
        break;
      case 1:
        _cubit.getQuestions();
        break;
      case 2:
        _cubit.getTasks();
        break;
      case 3:
        _cubit.getUsers();
        break;
      case 4:
        _cubit.getSetting();
        break;
      default:
    }
  }
}
