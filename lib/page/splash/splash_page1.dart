import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutterrightdemo/constant.dart';
import 'package:flutterrightdemo/page/bottom_navigator.dart';
import 'package:flutterrightdemo/res/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';

///图片放大效果

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    //状态栏和虚拟按键隐藏
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    _animationController = new AnimationController(
        vsync: this,
        duration: Duration(seconds: 1),
        lowerBound: 0,
        upperBound: 50);

    _animationController.addListener(() {
      setState(() {});
      if (_animationController.value == 50) {
        Navigator.pushReplacement(context, _createRouteAnimation());
      }
    });

    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: Gaps.screenUtil.screenWidth,
        height: Gaps.screenUtil.screenHeight + _animationController.value,
        child: Image.asset(
          "assets/images/bg_splash.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void startAnimation() async {
    await Future.delayed(Duration(seconds: 1));
    _animationController.forward();
  }

  _createRouteAnimation() {
//    return PageRouteBuilder(
//      transitionDuration: Duration(milliseconds: 1000), //动画时间为500毫秒
//      pageBuilder: (BuildContext context, Animation animation,
//          Animation secondaryAnimation) {
//        return new FadeTransition(
//          //使用渐隐渐入过渡,
//          opacity: animation,
//          child: BottomNavigatorPage(), //路由B
//        );
//      },
//    );

    return CupertinoPageRoute(
      builder: (context) => BottomNavigatorPage(),
    );
  }

  @override
  void dispose() {
    //显示
//    SystemChrome.setEnabledSystemUIOverlays(
//        [ SystemUiOverlay.bottom]);

    _animationController?.dispose();
    super.dispose();
  }
}
