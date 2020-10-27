import 'package:flutter/material.dart';
import 'package:flutter_101ppt/scene/home/home_banner.dart';
import 'package:flutter_101ppt/scene/home/home_tools.dart';

class HomeScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeSceneState();
}

class HomeSceneState extends State<HomeScene> {
  List swiperDataList = [
    'https://cdncs.101.com/v0.1/download?dentryId=07629c7d-c90c-421c-96c4-60bc8d5c4f45',
    'https://cdncs.101.com/v0.1/download?dentryId=dd8e7098-332d-4f84-87ba-1c4cb54e5b1d',
    'https://cdncs.101.com/v0.1/download?dentryId=1dec5044-e224-4f78-b195-fdd77b507d84',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[HomeBanner(), HomeTools()]));
  }
}
