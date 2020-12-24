import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/page/widget/item_widget.dart';
import 'package:flutterrightdemo/page/widget/progress_indicator.dart';
import 'package:flutterrightdemo/res/styles.dart';

import 'home_data.dart';

class DailyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DailyPageState();
  }
}

class _DailyPageState extends State<DailyPage> {
  HomeDataUtil _dataUtil;
  List<ItemList> _itemList;

  //加载完成
  bool _isLoaded = false;

  //显示回到顶部按钮
  bool _isShowBack = false;
  ScrollController _scrollController;

  //数据全部加载标志位
  bool _isEnded = false;

  @override
  void initState() {
    _itemList = [];
    _scrollController = new ScrollController();

    _onLoadMore();

    _scrollController.addListener(_listenEvent);

    super.initState();
  }

  ///build里面不要做耗时操作
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            ///数据加载中
            Offstage(
              offstage: _isLoaded,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),

            ///数据加载完成
            Offstage(
              offstage: !_isLoaded,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: RefreshIndicator(
                          onRefresh: _onRefresh,
                          //TODO 待实现 下拉刷新优化
                          child: ListView.builder(
                              controller: _scrollController,
                              //添加一个加载item或者结束item
                              itemCount: _itemList.length + 1,
                              itemBuilder: (context, index) {
                                if (index == _itemList.length) {
                                  return !_isEnded
                                      ? _onLoadingWidget()
                                      : _onEndWidget();
                                }
                                return DataItemWidget(
                                    context, _itemList[index]);
                              }))),
                  !_isShowBack
                      ? SizedBox()
                      : Positioned(
                          right: Gaps.hGap15,
                          bottom: Gaps.vGap15,
                          child: FloatingActionButton(
                            //先快后慢
                            onPressed: () {
                              //500秒返回到顶部，先快后慢
                              _scrollController.animateTo(0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ));
  }

  void _listenEvent() {
    if (_scrollController.position.pixels > 1000 &&
        !_isShowBack &&
        _scrollController.position.pixels <
            _scrollController.position.maxScrollExtent - 100) {
      _isShowBack = true;
      if (mounted) {
        setState(() {});
      }
    }
    if (_scrollController.position.pixels < 1000 && _isShowBack ||
        _scrollController.position.pixels >
                _scrollController.position.maxScrollExtent - 100 &&
            _isShowBack) {
      _isShowBack = false;
      if (mounted) {
        setState(() {});
      }
    }

    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _onLoadMore();
    }
  }

  Widget _onLoadingWidget() {
    return Container(
      width: double.infinity,
      height: Gaps.getVGap(Gaps.getVGap(50)),
      child: Center(
        child: MyProgressAnimation(),
      ),
    );
  }

  Widget _onEndWidget() {
    return Container(
      width: double.infinity,
      height: Gaps.getVGap(Gaps.getVGap(90)),
      child: Center(
        child: Stack(
          children: [
            //分界线
            Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                width: double.infinity,
                height: Gaps.getVGap(1),
                color: Colors.grey),
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black, width: 2),
                    borderRadius: new BorderRadius.circular((10.0))),
                margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
                child: Stack(
                  children: [
                    Positioned(
                        left: Gaps.hGap15,
                        top: Gaps.vGap10,
                        child: Text("我想写一个故事，",
                            style: TextStyle(
                              fontSize: FontSize.sFont14,
                              fontWeight: FontWeight.bold,
                            ))),
                    Positioned(
                        right: Gaps.hGap15,
                        bottom: Gaps.vGap10,
                        child: Text("以“我”开始，以“我们”结束……",
                            style: TextStyle(
                              fontSize: FontSize.sFont14,
                              fontWeight: FontWeight.bold,
                            )))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _onLoadMore() async {
    if(_dataUtil==null){
      _dataUtil = new HomeDataUtil();
    }
    List<ItemList> list = await _dataUtil.loadHomeData();
    if(list==null){
      _isEnded = true;
    }else{
      _itemList.addAll(list);
      _isLoaded = true;
    }
    debugPrint("=====DailyPage====${_itemList.length}");
    //TODO 动画过快消失会出现bug
    // AnimationController.stop() called after AnimationController.dispose()
    await Future.delayed(Duration(seconds: 1));

    if (mounted) {
      setState(() {});
    }
  }

  ///下拉刷新
  Future<void> _onRefresh() async {
    _itemList = await _dataUtil.reload();
    _isEnded = false;
    if (mounted) {
      _isLoaded = true;
      setState(() {});
    }
  }


  @override
  void dispose() {
    _scrollController?.removeListener(_listenEvent);
    _scrollController?.dispose();
    super.dispose();
  }
}
