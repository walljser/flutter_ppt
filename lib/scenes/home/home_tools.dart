import 'package:flutter/material.dart';

class HomeTools extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeToolsState();
}

class HomeToolsState extends State<HomeTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.0, 46.0, 24.0, 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('img/bgimages/common_bg_paper_white.png'),
          repeat: ImageRepeat.repeat
        )
      ),
    );
  }
}