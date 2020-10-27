import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PPTAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget child;
  final Color statusbarColor;
  final double height;

  PPTAppBar({this.child, this.height, this.statusbarColor}) : super();

  @override
  Size get preferredSize => new Size.fromHeight(this.height);

  @override
  _PPTAppBarState createState() => _PPTAppBarState();
}

class _PPTAppBarState extends State<PPTAppBar> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(
      context,
      designSize: Size(720, 1280),
      allowFontScaling: false,
    );
    return Container(
      height: widget.height + MediaQuery.of(context).padding.top,
      width: MediaQuery.of(context).size.width,
      color: widget.statusbarColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: widget.child,
      ),
    );
  }
}
