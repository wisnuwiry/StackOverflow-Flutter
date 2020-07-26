import 'package:flutter/material.dart';

import '../../../common.dart';

/// Answer Card
class AnswerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(Dimens.dp16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            Divider(height: Dimens.dp32),
            HtmlContent(
              data: '''
              <p>Found the answer.</p>\n<p>Looked at the repo on Github and at an example. It was different than the tutorial from the link I posted above.</p>\n<p><a href=\"https://github.com/angular/components/tree/master/src/google-maps#readme\" rel=\"nofollow noreferrer\">https://github.com/angular/components/tree/master/src/google-maps#readme</a></p>\n<p>Map marker needed to have this prop</p>\n<p><div class=\"snippet\" data-lang=\"js\" data-hide=\"false\" data-console=\"true\" data-babel=\"false\">\r\n<div class=\"snippet-code\">\r\n<pre class=\"snippet-code-html lang-html prettyprint-override\"><code>&lt;map-marker \n  #somemarker=\"mapMarker\" // not #markerElem like from the link\n  (mapClick)=\"openInfoWindow(somemarker, marker.info)\"&gt;\n&lt;/map-marker&gt;</code></pre>\r\n</div>\r\n</div>\r\n</p>\n
              '''
            ),
            Divider(height: Dimens.dp32),
            _buildActionControll(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserInfo(),
        SizedBox(
          height: Dimens.dp32,
          child: IconButton(
            icon: Icon(Icons.share, size: Dimens.dp16),
            color: Theme.of(context).disabledColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

 Widget _buildActionControll(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PostActionButton(
          icon: Icons.thumb_up,
          color: AppColors.successColor,
          text: 'Usefull',
          onPressed: (){},
        ),
        TitleText('123'),
        PostActionButton(
          icon: Icons.thumb_down,
          color: AppColors.errorColor,
          text: 'Not Usefull',
          onPressed: (){},
        ),
      ],
    );
  }
}