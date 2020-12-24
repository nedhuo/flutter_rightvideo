import 'dart:async';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/page/splash/splash_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../constant.dart';
import 'countdown_widget.dart';

class SplashItem extends StatefulWidget {
  //图片地址
  String imagePath;

  //图片点击链接
  String imageUrl;
  bool isLastPage;

  SplashModel splashModel;

  bool isTimer = false;

  Timer timer;

  SplashItem(this.imagePath, this.isLastPage,
      {this.imageUrl, this.isTimer = false, this.timer});

  SplashItem.model(this.splashModel) {
    imagePath = splashModel.imagePath;
    imageUrl = splashModel.imageUrl;
    isLastPage = splashModel.isLastPage;
    if (imagePath == null) Fluttertoast.showToast(msg: "imagePath为null");
  }

  @override
  _SplashItemState createState() => _SplashItemState();
}

class _SplashItemState extends State<SplashItem> {
  int countDown = 5;

  @override
  Widget build(BuildContext context) {
    new Timer.periodic(Duration(seconds: 1), (timer) {
      //每一秒回调一次
      countDown--;
      if (countDown == 0) {
        timer.cancel();
        Navigator.pushReplacementNamed(context, RouterConstant.MainPage);
      }
    });
    double screenWidth = ScreenUtil.getInstance().screenWidth;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: InkWell(
            child: Image.network(widget.imagePath, fit: BoxFit.cover),
            onTap: () {
              Fluttertoast.showToast(msg: "点我干啥？");
              //跳转WebView
            },
          ),
        ),
        widget.isLastPage == true
            ? Positioned(
                bottom: 100,
                left: (screenWidth - 100) / 2,
                child: Container(
                  width: 100,
                  child: RaisedButton(
                    child: Text("进入APP"),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RouterConstant.MainPage);
                    },
                    color: Colors.white,
                  ),
                ),
              )
            : SizedBox(),
        widget.isTimer == true
            ? Positioned(
                right: 30,
                top: 50,
                child: CountDownWidget(context),
              )
            : SizedBox(),
      ],
    );
  }
}
