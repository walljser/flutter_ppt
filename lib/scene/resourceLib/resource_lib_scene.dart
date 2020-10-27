import 'package:flutter/material.dart';
import 'package:flutter_101ppt/app/ppt_color.dart';
import 'package:flutter_101ppt/scene/resourceLib/resource_lib_chapterbar.dart';
import 'package:flutter_101ppt/scene/resourceLib/resource_lib_special_resource.dart';
import 'package:flutter_101ppt/widgets/PPTAppBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResourceLibScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(720, 1280),
      // designSize: Size(PPTConstants.defaultScreenWidth, PPTConstants.defaultScreenHeight),
      allowFontScaling: false,
    );
    return Scaffold(
      appBar: new PPTAppBar(
        statusbarColor: PPTColor.titleBarColor,
        height: ScreenUtil().setHeight(88.0),
        child: ResourceLibChapterBar(),
      ),
      body: RLSpecialResource(),
    );
  }
}
