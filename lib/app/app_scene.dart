import 'package:flutter/material.dart';
import 'root_scene.dart';
import 'ppt_color.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '101教育PPT',
      // navigatorOb
      // navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PPTColor.primary,
        dividerColor: Color(0xffeeeeee),
        scaffoldBackgroundColor: PPTColor.paper,
        textTheme: TextTheme(bodyText1: TextStyle(color: PPTColor.darkGray)),
      ),
      home: RootScene(),
    );
  }
}
