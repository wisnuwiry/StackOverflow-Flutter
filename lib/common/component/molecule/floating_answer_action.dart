import 'package:flutter/material.dart';

import '../../common.dart';

/// FloatingActionAnswer widget 
/// in detail question action navigate to form answer
class FloatingActionAnswer extends StatelessWidget {
  /// Controller text
  final TextEditingController controller;
  /// FocusNode
  final FocusNode focusNode;
  /// When this widget tap/press
  final VoidCallback onPressed;

  ///
  const FloatingActionAnswer(
      {Key key,
      this.controller,
      this.focusNode,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: Dimens.dp12,
                  color: Theme.of(context).disabledColor.withOpacity(0.2),
                  offset: Offset(0, Dimens.dp6)
                ),
              ]
            ),
            child: TextForm(
              controller: controller,
              focusNode: focusNode,
              hintText: 'Your answer..',
              readOnly: true,
              prefixIcon: Icon(
                Icons.chat,
                size: Dimens.dp20,
              ),
              suffixIcon: _buildSuffix(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSuffix() {
    return Container(
        margin: EdgeInsets.all(Dimens.dp4),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimens.dp4),
            boxShadow: [
              BoxShadow(
                blurRadius: Dimens.dp4,
                color: AppColors.primaryColor,
                offset: Offset(0, Dimens.dp2)
              )
            ]),
        child: Icon(Icons.send, color: Colors.white));
  }
}
