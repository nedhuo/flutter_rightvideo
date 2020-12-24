import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrightdemo/res/styles.dart';

/// 有父Widget的宽来确定大小
class _Progress extends CustomPainter {
  final Color color;
  final int count;
  final List<Animation<double>> animators;

  const _Progress({this.animators, this.color, this.count});

  @override
  void paint(Canvas canvas, Size size) {
    //间隔算一个半径 一个圆两个半径
    //size的大小由父类Widget的width决定
    double radius = size.width / (3 * count + 1);
    Paint paint = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    for (int i = 1; i < count + 1; i++) {
      double value = animators[i - 1].value;
      //第一个参数 圆心  第二个参数 半径
      canvas.drawCircle(new Offset(radius * i * 3 - radius, size.height / 2),
          radius * (value > 1 ? (2 - value) : value), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

// ignore: must_be_immutable
class MyProgressAnimation extends StatefulWidget {
  Color color;
  int count;
  int milliseconds;
  Size size;

  MyProgressAnimation({
    Color color,
    int count,
    int milliseconds,
    Size size,
  })  : count = 4,
        color = Colors.black,
        milliseconds = 500,
        size = Size(Gaps.getHGap(80), Gaps.vGap10);

  @override
  State<StatefulWidget> createState() => _MyProgressState();
}

//  TickerProviderStateMixin
class _MyProgressState extends State<MyProgressAnimation>
    with TickerProviderStateMixin<MyProgressAnimation> {
  List<Animation<double>> animators = [];
  List<AnimationController> _animationControllers = [];

  @override
  void initState() {

    debugPrint("========amazing结束==================");
    for (int i = 0; i < widget.count; i++) {
      var animationController = new AnimationController(
          vsync: this,
          duration: Duration(milliseconds: widget.milliseconds * widget.count));
      //0.2    0.4    0.6   0.8
      animationController.value = 0.8 * i / widget.count;
      //动画控制器
      _animationControllers.add(animationController);
      //大小变换动画
      Animation<double> animation =
      new Tween(begin: 0.1, end: 1.9).animate(animationController);

      animators.add(animation);
    }

    //为其中一个animator添加监听，不断刷新布局
    animators[0].addListener(() {
      if (mounted) setState(() {});
    });

    //为每个圆做延时处理
    try {
      var mi = (widget.milliseconds ~/ (animators.length - 1));
      for (int i = 0; i < animators.length; i++) {
        // debugPrint("----延时毫秒数----${(mi * i).toString()}----");
        doDelay(_animationControllers[i], mi * i);
      }
    } on Exception {
      //TODO 快速滑动时，动画会出现问题
      debugPrint("----------------------------");
    }

    super.initState();
  }

  void doDelay(AnimationController _animationController, int delay) async {
    Future.delayed(Duration(milliseconds: delay), () {
      _animationController.repeat();
    });
  }

  void _change() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //
    return ClipRect(
      child: Align(
        //alignment: ,
        //仅显示高度的1/2,,通过alignment属性确定该位置，默认中心
        heightFactor: 0.5,
        child: CustomPaint(
          painter: _Progress(
              animators: animators, color: widget.color, count: widget.count),
          //size属性是其child的size
          size: widget.size,
        ),
      ),
    );
  }



  @override
  void dispose() {
    animators[0].removeListener(_change);
    for (AnimationController _animationController in _animationControllers) {
      _animationController.dispose();
    }
    super.dispose();
  }
}
