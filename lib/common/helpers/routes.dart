import 'package:flutter/material.dart';

import '../../forum/presentation/presentation.dart';

/// Routes generate in app
class Routes {
  const Routes._();

  // Static route URL page
  static const String main = '/main';
  static const String splash = '/splash';
  static const String detailQuestion = '/detailQuestion';

  ///  routes
  static Route<dynamic> routes(RouteSettings settings) {
    // argument data
    // final args = settings.arguments;

    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => MainPage());
        break;
      case splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
        break;
      case detailQuestion:
        return MaterialPageRoute(builder: (_) => DetailQuestionPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
