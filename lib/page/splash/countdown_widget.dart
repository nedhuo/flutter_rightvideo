import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/constant.dart';

class CountDownWidget extends StatefulWidget {
  int countTime;
  BuildContext context;

  CountDownWidget(this.context, {this.countTime = 3});

  @override
  State<StatefulWidget> createState() => _CountDownState();
}

class _CountDownState extends State<CountDownWidget> {
  int countTime;

  Timer _timer;

  @override
  void initState() {
    _timer = new Timer.periodic(Duration(seconds: 1), (timer) {
      countTime = widget.countTime;
      countTime--;
      if (countTime == 0) {
        Navigator.pushReplacementNamed(widget.context, RouterConstant.MainPage);
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Text(
          "剩余${countTime.toString()}秒",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  void dispose() {

    _timer?.cancel();
    super.dispose();
  }
}
