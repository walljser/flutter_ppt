import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101ppt/app/ppt_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResourceLibChapterBar extends StatefulWidget {
  final SystemUiOverlayStyle _systemUiOverlay = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: null,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );
  static const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: null,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );

  @override
  _ResourceLibChapterBarState createState() => _ResourceLibChapterBarState();
}

class _ResourceLibChapterBarState extends State<ResourceLibChapterBar> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(widget._systemUiOverlay);
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
            // flex: 10,
            child: Row(
              children: <Widget>[
                Text(
                  "语文-三年级下册",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(30.0),
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF6f6455),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(8.0)),
                  child: Image.asset(
                    'img/icons/common_header_dropdown.png',
                    width: ScreenUtil().setWidth(36.0),
                    height: ScreenUtil().setHeight(36.0),
                  ),
                )
              ],
            ),
            // child: Text("101资源库"),
          ),
          Container(
            margin: EdgeInsets.only(left: ScreenUtil().setWidth(88.0)),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "img/icons/common_header_search.png",
                  height: ScreenUtil().setHeight(60.0),
                  width: ScreenUtil().setWidth(60.0),
                ),
                Image.asset(
                  "img/icons/common_locale_file.png",
                  height: ScreenUtil().setHeight(60.0),
                  width: ScreenUtil().setWidth(60.0),
                ),
              ],
            ),
          ),
        ],
      ),
      // child: Container(color: Colors.yellow),
    );
  }
}
