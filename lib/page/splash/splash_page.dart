import 'dart:async';

import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/page/splash/splash_item.dart';
import 'package:flutterrightdemo/page/splash/splash_model.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../../constant.dart';

///第一次登陆则显示App介绍
///否则显示3秒广告
class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  bool isFirstEntry;
  PageController _pageController;
  TabController _tabController;
  int _curPageIndex = 0;

  List<Widget> _pageList;

  List<SplashModel> _splashDatas;

  Timer _timer;

  @override
  void initState() {
    init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil.getInstance().screenWidth;
    return Scaffold(
      body: isFirstEntry == true
          ? Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: PageView(
                    controller: _pageController,
                    children: _pageList,
                    onPageChanged: (index) {
                      _curPageIndex = index;
                      _tabController.animateTo(_curPageIndex,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 80,
                    child: TabPageSelector(
                      controller: _tabController,
                      color: Colors.white,
                      selectedColor: Colors.blue,
                    ),
                  ),
                  left: (screenWidth - 80) / 2,
                  bottom: 20.0,
                ),
              ],
            )
          : SplashItem(
              "http://pic1.win4000.com/tj/2019-08-16/5d565754c548a.jpg",
              false,
              isTimer: true,
            ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _pageController?.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void initView() {
    //请求Splash数据
    _splashDatas = <SplashModel>[
      SplashModel(
          "https://m-sj-enterdesk-com.sm-tc.cn/i/s/up.enterdesk.com/edpic/66/" +
              "aa/91/66aa910399f8a832fa1e20507f5f9286.jpg",
          false),
      SplashModel(
          "https://m-sj-enterdesk-com.sm-tc.cn/i/s/up.enterdesk.com/edpic/94" +
              "/77/95/947795058789c4c60c70ebee8ab898bd.jpg",
          false),
      SplashModel(
          "https://m-sj-enterdesk-com.sm-tc.cn/i/s/up.enterdesk.com/edpic/d2/" +
              "e2/3a/d2e23a1d310f5eaacb876f492c6b60f3.jpg",
          false),
      SplashModel(
          "https://m-sj-enterdesk-com.sm-tc.cn/i/s/up.enterdesk.com/edpic/ac/" +
              "d1/9d/acd19d47b2fabe08985457ef38f1fc8b.jpg",
          true),
    ];

    _pageList = <Widget>[
      SplashItem.model(_splashDatas[0]),
      SplashItem.model(_splashDatas[1]),
      SplashItem.model(_splashDatas[2]),
      SplashItem.model(_splashDatas[3])
    ];
  }

  void init() async {
    await SpUtil.getInstance();
    isFirstEntry = SpUtil.getBool(SpConstant.IsFirstEntry, defValue: true);
    Fluttertoast.showToast(msg: "put IsFirestEntry ${isFirstEntry.toString()}");
    if (isFirstEntry) {
      bool putBool = await SpUtil.putBool(SpConstant.IsFirstEntry, false);
      Fluttertoast.showToast(msg: "put IsFirestEntry ${putBool.toString()}");
      initView();
      _tabController = TabController(
          initialIndex: _curPageIndex, length: _pageList.length, vsync: this);
      _pageController = PageController(initialPage: _curPageIndex);
    } else {
//      _timer = new Timer(Duration(seconds: 10), goMain(context));
//      Fluttertoast.showToast(msg: "put IsFirestEntry ${_timer.tick}");
    }
  }

  goMain(context) {
    Navigator.pushReplacementNamed(context, RouterConstant.MainPage);
  }
}
