import 'package:flutter/material.dart';

import '../../../common/common.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppLogo(
                size:
                    (Dimens.width(context) * Dimens.height(context)) * 0.0007),
            SizedBox(height: Dimens.dp24),
            RichText(
              text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Theme.of(context).disabledColor),
                  text: 'Stack',
                  children: [
                    TextSpan(
                        text: 'Overflow',
                        style: TextStyle(color: AppColors.primaryColor))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
