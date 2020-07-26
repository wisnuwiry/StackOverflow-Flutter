import 'package:cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/common.dart';
import 'app/presentation/page/home/main_page.dart';
import 'generated/l10n.dart';

void main() {
  // Show transition cubit and event
  Cubit.observer = AppCubitObserver();
  runApp(MyApp());
}

/// Root widget
/// Can first load widget, on start app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This make status bar overlay to transparent
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness));

    return MaterialApp(
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // Delegate custom localization
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: Strings.appName,
      theme: LightTheme()(),
      onGenerateRoute: Routes.routes,
      initialRoute: Routes.main,
      home: MainPage(),
    );
  }
}
