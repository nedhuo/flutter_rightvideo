import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/page/home/recommend_page.dart';

import 'classify_page.dart';
import 'daily_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

/// PageView[ 刷一刷，推荐，电影，电视，综艺，动漫 ，图标按钮（跳转发现）]
//
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  TabController _tabController;
  int _curPageIndex = 0;
  List<Widget> _tabList;
  List<Widget> _pageList;

  @override
  void initState() {
    //加载到UI树中执行 执行一次
    super.initState();
    initData();
    _tabController = TabController(
        initialIndex: _curPageIndex, length: _tabList.length, vsync: this);
    _pageController = PageController(initialPage: _curPageIndex);
  }

  @override
  void didChangeDependencies() {
    //
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("主页"),
        //TODO 待实现 自定义的Tabbar 去掉AppBar
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabList,
          onTap: (index) {
            _curPageIndex = index;

            _pageController.jumpToPage(_curPageIndex);
            //TODO 待实现 指示器的线性过渡
            //curve 动画的线性状态
//            _pageController.animateToPage(_curPageIndex,
//                duration: Duration(milliseconds: 300), curve:Curves.linear);
          },
          indicatorPadding: EdgeInsets.only(left: 10, right: 10),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _pageList,
            onPageChanged: (index) {
              if (index != _curPageIndex) {
                _curPageIndex = index;
                _tabController.animateTo(_curPageIndex);
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController?.dispose();
    _tabController?.dispose();
    super.dispose();
  }

  void initData() {
    _tabList = [
      Tab(text: "日报"),
      Tab(text: "推荐"),
      Tab(text: "电视"),
      Tab(icon: Icon(Icons.more_vert)),
    ];

    _pageList = [
      DailyPage(),
      RecommendPage(),
      RecommendPage(),
      ClassifyPage(),
    ];
  }
}
