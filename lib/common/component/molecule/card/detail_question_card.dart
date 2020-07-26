import 'package:flutter/material.dart';

import '../../../common.dart';

/// Card detail question
class DetailQuestionCard extends StatelessWidget {
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
            TitleText(
              'Google Map npm Angular package throwing error when opening info window, getAnchor() is not found',
            ),
            HtmlContent(
              data: '''
              <p>I'm using this <a href=\"https://timdeschryver.dev/blog/google-maps-as-an-angular-component\" rel=\"nofollow noreferrer\">google map angular component</a> tutorial and it's working pretty good! <strong>BUT</strong> opening up an info window throws an exception inside the installed library google-maps.js.</p>\n<p>Package -</p>\n<pre><code>&quot;npm install @angular/google-maps&quot;\n</code></pre>\n<p>Here is my code that calls &quot;this.infoWindow.open&quot; method on a &quot;MapInfoWindow&quot; component from the npm package.</p>\n<p><div class=\"snippet\" data-lang=\"js\" data-hide=\"false\" data-console=\"true\" data-babel=\"false\">\r\n<div class=\"snippet-code\">\r\n<pre class=\"snippet-code-js lang-js prettyprint-override\"><code>import {\n  MapInfoWindow,\n  MapMarker,\n  GoogleMap\n} from '@angular/google-maps';\n\nexport class YogabandEventsComponent implements OnInit {\n  @ViewChild(MapInfoWindow, {\n    static: false\n  }) infoWindow: MapInfoWindow;\n  @ViewChild(GoogleMap, {\n    static: false\n  }) googleMap: GoogleMap;\n\n\n  openInfo(marker: MapMarker, content) {\n    this.infoContent = content;\n    this.infoWindow.open(marker);\n  }\n}</code></pre>\r\n<pre class=\"snippet-code-html lang-html prettyprint-override\"><code>&lt;google-map [options]=\"options\" [zoom]=\"zoom\" [center]=\"center\" class=\"h-100\" height=\"100%\" width=\"100%\"&gt;\n  &lt;map-marker #markerElem *ngFor=\"let marker of markers\" (mapClick)=\"openInfo(markerElem, marker.info)\" [position]=\"marker.position\" [label]=\"marker.label\" [title]=\"marker.title\" [options]=\"marker.options\"&gt;\n  &lt;/map-marker&gt;\n  &lt;map-info-window&gt;{{ infoContent }}&lt;/map-info-window&gt;\n&lt;/google-map&gt;</code></pre>\r\n</div>\r\n</div>\r\n</p>\n<p>When</p>\n<blockquote>\n<p>infoWindow.open(marker)</p>\n</blockquote>\n<p>is called it enters</p>\n<blockquote>\n<p>google-maps.js // line 1122</p>\n</blockquote>\n<p>but receives an error on line 1122, because there is no &quot;getAnchor()&quot; method</p>\n<pre><code>this.infoWindow.open(this._googleMap.googleMap, anchor ? anchor.getAnchor() : undefined);\n</code></pre>\n<p><div class=\"snippet\" data-lang=\"js\" data-hide=\"false\" data-console=\"true\" data-babel=\"false\">\r\n<div class=\"snippet-code\">\r\n<pre class=\"snippet-code-js lang-js prettyprint-override\"><code>   // in google-maps.js \nopen(anchor) {\n  this._assertInitialized();\n  this._elementRef.nativeElement.style.display = '';\n  this.infoWindow.open(this._googleMap.googleMap, anchor ? anchor.getAnchor() : undefined); // line 1122\n}</code></pre>\r\n</div>\r\n</div>\r\n</p>\n<p>I looked through the google docs and I don't see any &quot;getAnchor&quot; method.</p>\n<p>Here is what I see in the debugger when setting a breakpoint in my component.</p>\n<p><a href=\"https://i.stack.imgur.com/OaDBc.png\" rel=\"nofollow noreferrer\"><img src=\"https://i.stack.imgur.com/OaDBc.png\" alt=\"enter image description here\" /></a></p>\n<p>Here is what it shows in the debug console when I look at 'marker', so it has values and is instantiated!</p>\n<p><a href=\"https://i.stack.imgur.com/LQu9X.png\" rel=\"nofollow noreferrer\"><img src=\"https://i.stack.imgur.com/LQu9X.png\" alt=\"enter image description here\" /></a></p>\n<p>I can copy and paste the whole thing but it's long.</p>\n<p>Here is another pic of debug console, inside google-maps.js file, trying to call the getAnchor() with no luck becasue it doesn't exist.</p>\n<p><a href=\"https://i.stack.imgur.com/dbVQL.png\" rel=\"nofollow noreferrer\"><img src=\"https://i.stack.imgur.com/dbVQL.png\" alt=\"enter image description here\" /></a></p>\n
              ''',
            ),
            SizedBox(height: Dimens.dp16),
            _buildTags(),
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
            icon: Icon(Icons.bookmark_border),
            color: Theme.of(context).disabledColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildTags() {
    return Wrap(
      spacing: Dimens.dp8,
      runSpacing: Dimens.dp8,
      children: [
        TagItem(),
        TagItem(),
        TagItem(),
        TagItem(),
        TagItem(),
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
