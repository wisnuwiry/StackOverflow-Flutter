import 'package:flutter/material.dart';

import '../../../common.dart';

/// Base widget TextForm input
class TextForm extends StatelessWidget {
  /// Controller text
  final TextEditingController controller;

  ///
  final FocusNode focusNode;

  /// Placeholder text in input widget
  final String hintText;

  /// Icon Prefix, you can input with icon or other widget
  final Widget prefixIcon;

  /// Suffix icon, in right this widget
  final Widget suffixIcon;

  /// Value when user change, update, and submit input
  final ValueChanged<String> onChange, onSubmit;

  /// Action input in keyboard
  final TextInputAction inputAction;

  /// Style text in input
  final TextStyle style;

  /// Input type in keybord
  final TextInputType inputType;

  /// Read only status
  final bool readOnly;

  /// Tapped widget
  final VoidCallback onTap;

  ///
  const TextForm(
      {Key key,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefixIcon,
      this.onChange,
      this.onSubmit,
      this.inputAction,
      this.style,
      this.inputType,
      this.readOnly = false,
      this.suffixIcon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      textInputAction: inputAction ?? TextInputAction.done,
      style: style ??
          Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontWeight: FontWeight.normal),
      keyboardType: inputType,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: Dimens.dp14),
          hintText: hintText ?? '',
          filled: true,
          fillColor: Theme.of(context).cardColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.dp6),
            borderSide: BorderSide.none,
          )),
    );
  }
}
