import 'package:flutter/material.dart';

import '../../common.dart';

/// Base style sheet BottomSheet & ModalSheet
class BaseContentSheet extends StatelessWidget {
  /// Child widget in sheet content
  final Widget child;

  const BaseContentSheet({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Icon(
          Icons.drag_handle,
          color: Theme.of(context).disabledColor,
          size: Dimens.dp32,
        )),
        Padding(
          padding: EdgeInsets.only(
            left: Dimens.horizontalPadding,
            right: Dimens.horizontalPadding,
            top: Dimens.horizontalPadding,
          ),
          child: child,
        ),
      ],
    );
  }
}
