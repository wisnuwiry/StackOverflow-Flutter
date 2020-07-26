import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import '../../common.dart';

/// This widget rendering HTML code
class HtmlContent extends StatelessWidget {
  /// Data HTML content
  final String data;

  /// Field data is required inputed
  const HtmlContent({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(
      data: data,
      style: {
        'p': Style(),
        'pre': Style(
          backgroundColor: Theme.of(context).disabledColor.withOpacity(0.2),
          padding: EdgeInsets.all(Dimens.dp8),
          border: Border.all(
              color: Theme.of(context).disabledColor.withOpacity(0.3)),
          whiteSpace: WhiteSpace.PRE,
        ),
        'img': Style(
          padding: EdgeInsets.symmetric(vertical: Dimens.dp16),
        ),
        'a': Style(
          color: Theme.of(context).primaryColor,
          textDecoration: TextDecoration.none,
        ),
      },
      onLinkTap: (url) => print("Tapped link $url"),
      onImageTap: (url) {
        print("Image: $url");
      },
    );
  }
}
