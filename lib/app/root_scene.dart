import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101ppt/app/ppt_color.dart';
import 'package:flutter_101ppt/scene/home/home_scene.dart';
import 'package:flutter_101ppt/scene/netdisk/netdisk_scene.dart';
import 'package:flutter_101ppt/scene/resourceLib/resource_lib_scene.dart';
import 'package:flutter_101ppt/scene/usercenter/user_center_scene.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_101ppt/public.dart';

class RootScene extends StatefulWidget {
  // final SystemUiOverlayStyle _systemUiOverlayStyle = SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.light,
  // );
  @override
  State<StatefulWidget> createState() => RootSceneState();
}

class RootSceneState extends State<RootScene> {
  int _tabIndex = 0;
  bool isFinishSetup = false;

  List<Image> _tabImages = [
    Image.asset('img/icons/tabbar_icon_home.png'),
    Image.asset('img/icons/tabbar_icon_resourcelib.png'),
    // Image.asset('img/icons/tabbar_icon_netdisk@3x.png'),
    Image.asset('img/icons/tabbar_icon_usercenter.png'),
  ];

  List<Image> _tabSelectedImages = [
    Image.asset('img/icons/tabbar_icon_home_active.png'),
    Image.asset('img/icons/tabbar_icon_resourcelib_active.png'),
    // Image.asset('img/icons/tabbar_icon_netdisk_active@3x.png'),
    Image.asset('img/icons/tabbar_icon_usercenter_active.png'),
  ];

  @override
  void initState() {
    super.initState();
    print(111);

    setupApp();
  }

  setupApp() async {
    print(666);
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      isFinishSetup = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(children: [
          HomeScene(),
          ResourceLibScene(),
          NetdiskScene(),
          UserCenterScene()
        ], index: _tabIndex),
        bottomNavigationBar: CupertinoTabBar(
            backgroundColor: Colors.transparent,
            activeColor: PPTColor.primary,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: getTabIcon(0), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: getTabIcon(1), title: Text('101资源库')),
              // BottomNavigationBarItem(icon: getTabIcon(2), title: Text('网盘')),
              BottomNavigationBarItem(icon: getTabIcon(2), title: Text('我的')),
            ],
            currentIndex: _tabIndex,
            onTap: (index) {
              print('tap');
              setState(() {
                _tabIndex = index;
              });
            }));
  }

  Image getTabIcon(int index) {
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }
}
