import 'package:flustars/flustars.dart';
import 'package:flutter/widgets.dart';

class Gaps {
  static ScreenUtil screenUtil = ScreenUtil.getInstance();

  /// 水平间隔
  static double hGap5 = screenUtil.getWidth(5);
  static double hGap10 = screenUtil.getWidth(10);
  static double hGap15 = screenUtil.getWidth(15);
  static double hGap45 = screenUtil.getWidth(45);
  /// 垂直间隔
  static double vGap5 = screenUtil.getHeight(5);
  static double vGap10 = screenUtil.getHeight(10);
  static double vGap15 = screenUtil.getHeight(15);
  static double vGap45 = screenUtil.getHeight(45);

  static double getHGap(double w) {
    return screenUtil.getWidth(w);
  }

  static double getVGap(double h) {
    return screenUtil.getHeight(h);
  }
}

class FontSize {
  static ScreenUtil screenUtil = ScreenUtil.getInstance();

  static double sFont14 = screenUtil.getSp(14);
  static double sFont16 = screenUtil.getSp(16);
  static double sFont23 = screenUtil.getSp(23);

  static double getFont(double w) {
    return screenUtil.getSp(w);
  }
}
