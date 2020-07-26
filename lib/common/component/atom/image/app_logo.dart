import 'package:flutter/material.dart';

import '../../../common.dart';

/// Widget [AppLogo] can show logo app.
/// 
/// Example use:
/// 
/// ```dart
/// AppLogo(
///   size: 100, // this param is optional
/// )
/// ```
class AppLogo extends StatelessWidget {
  /// Size for widget size image logo, default value 32.0 or [Dimens.dp32]
  final double size;

  /// In widget [AppLogo] have two params [key] and [size] as type double.
  const AppLogo({Key key, this.size = Dimens.dp32}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsPaths.logo,
      width: size,
      height: size,
      fit: BoxFit.fitHeight,
    );
  }
}
