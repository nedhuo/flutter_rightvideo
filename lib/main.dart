import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/page/bottom_navigator.dart';
import 'package:flutterrightdemo/page/splash/splash_page1.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //路由
      routes: {RouterConstant.MainPage: (_) => BottomNavigatorPage(),
      RouterConstant.SplashPage:(_)=>SplashPage()},
      //TODO 待实现 主题切换
      theme: ThemeData(
        primaryColor: Color(0xFFFFFFFF),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //TODO 待实现，屏幕适配
    ScreenUtil screenUtil = ScreenUtil.getInstance();

    debugPrint('===============屏幕适配===================');
    debugPrint('===============字体适配===================');
    debugPrint('========像素密度：${screenUtil.screenDensity}');
    debugPrint('========设备的高：${screenUtil.screenHeight}');
    debugPrint('========设备的宽：${screenUtil.screenWidth}');
    return Scaffold(
      body: BottomNavigatorPage(),
    );
  }
}
