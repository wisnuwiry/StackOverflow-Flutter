import 'package:flutter/material.dart';

import '../../../common.dart';

/// [PrimaryButton] Widget, default button component in app
/// 
/// Example use:
/// 
/// ```dart
/// PrimaryButton(
///   onPressed: (){ Action if pressed/tap button},
///   child: Text('Some Text')
/// )
/// ```
class PrimaryButton extends StatelessWidget {
  /// Action Pressed/Tap in Button, this property required
  final VoidCallback onPressed;
  /// Child widget, or use text in button, this required 
  final Widget child;

  /// Create primary button, this should two params, [child] and [onPressed]
  const PrimaryButton({Key key, @required this.onPressed, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      color: Theme.of(context).primaryColor,
      textColor: AppColors.whiteColor,
      splashColor: Colors.transparent,
      elevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
    );
  }
}
