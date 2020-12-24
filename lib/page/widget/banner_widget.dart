import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/res/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';

//前后各添加两个页面 2-8是真正数据  0,1, 8，9为了页面滑动效果
//
//         6  7  1  2  3  4  5  6  7  1   2
//Index    0  1  2  3  4  5  6  7  8  9   10
//curPage  1  2  3  4  5  6  7  8  9  10  11

///
/// BannerView滑动判断两个条件  手指滑动距离    手指离开屏幕时的速度
///   任意一个满足    下一页
///    都不满足       滑回去
///

class BannerWidget extends StatefulWidget {
  //数据集合
  final List<ItemList> itemDatas;

  //切换时间
  final Duration switchDuration;

  final Color selectedIndicatorColor;

  final Color indicatorColor;

  BannerWidget(
    this.itemDatas, {
    this.switchDuration = const Duration(seconds: 3),
    this.selectedIndicatorColor = Colors.black,
    this.indicatorColor = Colors.white,
  });

  @override
  _BannerViewState createState() => _BannerViewState();
}

//SingleTickerProviderStateMixin 混入类用于指示器的动画
class _BannerViewState extends State<BannerWidget> {
  //页面切换控制器
  ScrollController _controller;

  //bannerItem宽度
  double _itemExtent;

  //BannerImage数据集合
  List<ItemList> _itemDatas = [];

  int _curPage = 2;

  //初始滚动距离
  double _initScrollOffset;
  double _curScrollOffset;

  //最后一个Item的偏移
  double _maxScrollOffset;

  //uoDate实时更新的偏移
  double _rtScrollOffset = 0;

  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _rtScrollOffset = 0;
    _scrollOffset = 0;
    //集合数据处理
    _itemDatas.addAll(widget.itemDatas);
//    _itemDatas.insert(0, widget.itemDatas.last);
//    _itemDatas.insert(0, widget.itemDatas[widget.itemDatas.length - 2]);
//    _itemDatas.add(widget.itemDatas[0]);
//    _itemDatas.add(widget.itemDatas[1]);

    debugPrint(
        "===BannerWidget=itemList.length===${widget.itemDatas.length}===");

    //计算及三个页面位置 10  15  剩余(310) 15 10
    //ListView宽
    _itemExtent =
        Gaps.screenUtil.screenWidth - Gaps.getHGap(10.0 + 10 + 15 + 15);

    //计算curPage=3的偏移位置
    _initScrollOffset = _itemExtent -
        Gaps.hGap15 +
        Gaps.screenUtil.screenWidth -
        Gaps.getHGap(10.0 + 10 + 15 + 15);
    _maxScrollOffset = _initScrollOffset +
        (Gaps.screenUtil.screenWidth - Gaps.getHGap(10.0 + 10 + 15 + 15)) *
            (widget.itemDatas.length - 1);

    //直接跳到第三个页面
    _controller = ScrollController(initialScrollOffset: _initScrollOffset);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Gaps.getVGap(180),
        //矛盾：如果想要检测到手势，listview就不能滚动
        //如果不能滚动，检测到手势也无法滚到下一页
        //解决，listview上面加一层透明布局来接手势
        child: Stack(
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _itemDatas.length,
//            physics: NeverScrollableScrollPhysics(),
              controller: _controller,
              itemExtent: _itemExtent,
              itemBuilder: (context, index) {
                return _bannerItem(_itemDatas[index].data);
              },
            ),
            GestureDetector(
                onHorizontalDragDown: (details) {
                  _rtScrollOffset = _curScrollOffset;
                  _scrollOffset = 0;
                },
                onHorizontalDragUpdate: (details) {
                  debugPrint(
                      "===GestureDetector==Update====${details.primaryDelta}==");
                  _scrollOffset = _scrollOffset + details.primaryDelta;
                  _rtScrollOffset = _rtScrollOffset - details.primaryDelta;
                  _controller.jumpTo(_rtScrollOffset);
                },
                onHorizontalDragEnd: (details) {
                  // _scrollOffset=details.primaryVelocity_scrollOffset
                  debugPrint("==GestureDetector==End==$_scrollOffset==");
                  debugPrint(
                      "==GestureDetector==End==${details.primaryVelocity}=");
                  double distance = _scrollOffset;

                  if (_scrollOffset < 0) {
                    //左滑
                    double distance = -_scrollOffset;
                    double velocity = -details.primaryVelocity;
                    if (distance > _itemExtent / 2 || velocity > 0) {
                      _nextBanner();
                    } else {
                      _controller.animateTo(_curScrollOffset,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.linear);
                    }
                  } else {
                    double distance = _scrollOffset;
                    double velocity = details.primaryVelocity;
                    if (distance > _itemExtent / 2 || velocity > 0) {
                      _lastBanner();
                    } else {
                      _controller.animateTo(_curScrollOffset,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.linear);
                    }
                  }
                },
                onHorizontalDragCancel: () {},

                //设置透明度，只要不是完全透明，就可以接收到手势操作
                child: Opacity(
                    opacity: 0.01,
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: double.infinity,
                    )))
          ],
        ));
  }

//下一页
  void _nextBanner() async {
    //计算下一页的偏移并滑动
    _curPage += 1;
    if (_curPage < _itemDatas.length) {
      _curScrollOffset =
          (Gaps.screenUtil.screenWidth - Gaps.getHGap(50)) * (_curPage - 2) +
              _initScrollOffset;
      _controller.animateTo(_curScrollOffset,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
//    if (_curPage > _itemDatas.length - 3) {
//      await Future.delayed(Duration(milliseconds: 300));
//
//      ///Any active animation is canceled. If the user is currently scrolling, that
//      /// action is canceled.
//      _controller.jumpTo(_initScrollOffset);
//      _curPage = 2;
//      // notifyChange();
//    }

    Fluttertoast.showToast(msg: "${_curPage}");
    //滑动动画500ms,此处将动画加载完成再进行操作
  }

//上一页
  void _lastBanner({double scrollOff = 0}) async {
    //计算下一个偏移地址
    _curPage -= 1;
    if (_itemDatas.length > -1) {
      _curScrollOffset =
          (Gaps.screenUtil.screenWidth - Gaps.getHGap(50)) * (_curPage - 2) +
              _initScrollOffset;

      _controller.animateTo(_curScrollOffset,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
//    if (_curPage < 2) {
//      await Future.delayed(Duration(milliseconds: 300));
//      _controller.jumpTo(_maxScrollOffset);
//      _curPage = _itemDatas.length - 3;
//      // notifyChange();
//    }

    Fluttertoast.showToast(msg: "${_curPage}");
  }

  Widget _bannerItem(BannerBean banner) {
    bool isShowLabel = false;
    if (banner.adTrack.length != 0) {
      //代表是广告
      isShowLabel = true;
    }
    return Container(
        height: double.infinity,
        //为了营造两边各露一角的效果
        width: Gaps.screenUtil.screenWidth - Gaps.getHGap(40),
        child: InkWell(
            onTap: () {
              //TODO 待实现 BannerView点击事件
            },
            child: Stack(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.network(
                          banner.image,
                          fit: BoxFit.cover,
                        ))),
                //角标
                isShowLabel
                    ? Positioned(
                        top: Gaps.vGap15,
                        right: Gaps.hGap15,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                    color: Colors.black,
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      //TODO 此处瑕疵
                                      "广告",
                                      style: TextStyle(color: Colors.white),
                                    )))))
                    : SizedBox(),
              ],
            )));
  }

  void notifyChange() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}

//
