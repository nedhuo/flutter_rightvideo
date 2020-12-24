import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/page/home/recommend_page.dart';
import 'package:flutterrightdemo/page/video/video_page.dart';
import 'package:flutterrightdemo/provider/recommend_provider.dart';
import 'package:provider/provider.dart';

import 'discover/discover_page.dart';
import 'home/home_page.dart';
import 'mine/my_page.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorPage> {
  // 记录当前 tab 选择位置
  int tabIndex = 0;
  var tabImages;
  var tabPages;

  final tabTextStyleNormal = TextStyle(color: Colors.black);
  final tabTextStyleSelected = TextStyle(color: Colors.blue);
  final tabTitles = <String>['首页', '视频', '发现', '我的'];

  var body;

  @override
  void initState() {
    super.initState();
    initAssets();

    tabPages ??= [
      HomePage(),
      CategoryPage(),
      DiscoverPage(),
      MyPage()
    ];
  }

  Image getTabImage(imagePath) => Image.asset(imagePath, width: 20, height: 20);

  Image getTabIcon(int index) {
    if (tabIndex == index) {
      return tabImages[index][1];
    }
    return tabImages[index][0];
  }

  TextStyle getTabTextStyle(int index) {
    if (tabIndex == index) {
      return tabTextStyleSelected;
    }
    return tabTextStyleNormal;
  }

  Text getTabTitle(index) =>
      Text(
        tabTitles[index],
        style: getTabTextStyle(index),
      );

  @override
  Widget build(BuildContext context) {
    body = IndexedStack(
      children: tabPages,
      index: tabIndex,
    );
    return Scaffold(
      body: this.body,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Color(0xFFFFFFFF),
        items: [
          BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
          BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
        ],
        currentIndex: tabIndex,
        onTap: (index) =>
        {
          if (mounted)
            setState(() {
              tabIndex = index;
            })
        },
      ),
    );
  }

  void initAssets() {
    tabImages ??= [
      [
        getTabImage('assets/images/ic_home_normal.png'),
        getTabImage('assets/images/ic_home_selected.png')
      ],
      [
        getTabImage('assets/images/ic_discovery_normal.png'),
        getTabImage('assets/images/ic_discovery_selected.png')
      ],
      [
        getTabImage('assets/images/ic_hot_normal.png'),
        getTabImage('assets/images/ic_hot_selected.png')
      ],
      [
        getTabImage('assets/images/ic_mine_normal.png'),
        getTabImage('assets/images/ic_mine_selected.png')
      ],
    ];
  }
}
