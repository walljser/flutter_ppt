import 'package:flutter/cupertino.dart';
import 'package:flutter_101ppt/app/ppt_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RLSpecialResource extends StatefulWidget {
  @override
  _RlSpecialResourceState createState() => _RlSpecialResourceState();
}

class _RlSpecialResourceState extends State<RLSpecialResource> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(24.0),
              ScreenUtil().setHeight(24.0),
              ScreenUtil().setWidth(24.0),
              ScreenUtil().setHeight(80.0),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  PPTColor.specialResourceGradientBottom,
                  PPTColor.specialResourceGradientTop,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
