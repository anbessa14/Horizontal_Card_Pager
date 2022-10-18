import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/video_util.dart';

VideoUtil util = VideoUtil();
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CardItem> items = [
      IconTitleCardItem(
        text: "f1",
        iconData: Icons.access_alarms,
        vimeoPlayer: util.getInitializedPlayer("752769505"),
      ),
      IconTitleCardItem(
        text: "f2",
        iconData: Icons.add,
        vimeoPlayer: util.getInitializedPlayer("752769505"),
      ),
    ];

    return MaterialApp(
      home:
          Scaffold(body: Center(child: util.getInitializedPlayer("752769505"))),
    );
  }
}
