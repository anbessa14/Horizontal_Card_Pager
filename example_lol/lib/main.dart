import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import 'constant/constant.dart';
import 'model/champion.dart';
import 'page/detail_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'lol',
        textTheme: textTheme,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final List<String> titles = [
  "AKALI",
  "CAMILE",
  "EZREAL",
  "IRELIA",
  "POPPY",
  "ZOE",
];

final skinNameMap = {
  "AKALI": [
    "NURSE AKALI",
    "INFERNAL AKALI",
    "CLASSIC",
    "K/DA AKALI",
    "K/DA AKALI PRESTIGGE EDITION",
    "HEADUNTER AKALI"
  ],
  "CAMILE": [
    "COVEN CAMILE",
    "PROGRAM KAMILE",
    "CLASSIC",
    "IG CAMILE",
  ],
  "EZREAL": [
    "SSG EZREAL",
    "PULSEFIRE EZREAL",
    "CLASSIC",
    "FROSTED EZREAL",
    "BATTLE ACADEMIA EZREAL",
    "STAR GUARDIAN EZREAL"
  ],
  "IRELIA": [
    "IG IRELIA",
    "EIVINE SWORD IRELIA",
    "CLASSIC",
    "PROJECT: IRELIA",
    "PROJECT: IRELIA PRESTIGGE EDITION",
    "HIGH NOON IRELIA"
  ],
  "POPPY": [
    "BLACK SMITH POPPY",
    "NOXUS POPPY",
    "CLASSIC",
    "BATTLE REGALIA POPPY",
    "STAR GUARDIAN POPPY",
    "HEXTECH PPOPY"
  ],
  "ZOE": [
    "POOL PARTY ZOE",
    "CYBER POP ZOE",
    "CLASSIC",
    "STAR GUARDIAN ZOE",
    "ARCANIST ZOE",
    "ARCANIST ZOE PRESTIGE EDITION"
  ],
};

final List<Widget> images = [
  Hero(
    tag: "AKALI",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/akali/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "CAMILE",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/camile/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "EZREAL",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/ezreal/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "IRELIA",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/irelia/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "POPPY",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/poppy/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
  Hero(
    tag: "ZOE",
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        "images/zoe/2.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Center(
                    child: Image.asset(
                  "images/logo.png",
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Expanded(
              child: Container(
                child: HorizontalCardPager(
                 items[CardItem]: images,
                  onPageChanged: (page) {},
                  onSelectedItem: (index) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailView(
                                skinNames:
                                    skinNameMap[titles[index].toUpperCase()],
                                champion:
                                    championsMap[titles[index].toLowerCase()],
                              )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
