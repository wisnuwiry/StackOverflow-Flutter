import 'package:flutter/material.dart';

class Dimens {
  
  /// Get current width device
  /// This same with MediaQuery.of(context).size.width
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get current height device
  /// This same with MediaQuery.of(context).size.height
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Base Dimens
  static const double dp2 = 2.0;
  static const double dp4 = 4.0;
  static const double dp6 = 6.0;
  static const double dp8 = 8.0;
  static const double dp10 = 10.0;
  static const double dp12 = 12.0;
  static const double dp14 = 14.0;
  static const double dp16 = 16.0;
  static const double dp20 = 20.0;
  static const double dp22 = 22.0;
  static const double dp24 = 24.0;
  static const double dp30 = 30.0;
  static const double dp32 = 32.0;

  // Theme Dimens
  static const double horizontalPadding = 16.0;
  static const double roundCard = 8.0;
  static const double roundButton = 8.0;

  // Custom Dimens
  static const double minAvatarSize = 16.0;
  static const double mediumAvatarSize = 30.0;
  static const double heightTagsList = 102.0;
  static const double heightUsersList = 170.0;
  static const double minQuestionWidthSize = 400;
  static const double minTagWidthSize = 150;
  static const double whiteSpaceBottom = 100;
}
