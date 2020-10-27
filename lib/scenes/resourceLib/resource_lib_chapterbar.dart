import 'package:flutter/material.dart';
import 'package:flutter_101ppt/app/ppt_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResourceLibChapterBar extends StatefulWidget {
  @override
  _ResourceLibChapterBarState createState() => _ResourceLibChapterBarState();
}

class _ResourceLibChapterBarState extends State<ResourceLibChapterBar> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(
      context,
      designSize: Size(720, 1280),
      allowFontScaling: false,
    );
    return Container(
        color: PPTColor.titleBarColor,
        padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(24.0), 0, ScreenUtil().setWidth(24.0), 0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Text(
                    "语文-三年级下册",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(30.0),
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6f6455),
                    ),
                  ),
                ],
              ),
              // child: Text("101资源库"),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "common_header_search.png",
                      height: ScreenUtil().setHeight(60.0),
                      width: ScreenUtil().setWidth(60.0),
                    ),
                    Image.asset(
                      "common_header_localfile.png",
                      height: ScreenUtil().setHeight(60.0),
                      width: ScreenUtil().setWidth(60.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
        // child: Container(color: Colors.yellow),
        );
  }
}
