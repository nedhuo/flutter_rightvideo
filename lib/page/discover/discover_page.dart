import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/page/widget/item_widget.dart';
import 'package:flutterrightdemo/page/widget/progress_indicator.dart';
import 'package:flutterrightdemo/res/styles.dart';

import 'discover_data.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DisCoverPageState();
  }
}

class _DisCoverPageState extends State<DiscoverPage> {
  DisCoverData _disCoverData;
  List<ItemList> _hotDatas = [];
  ScrollController _controller;
  //数据是否加载完毕
  bool _isEnded = false;

  //加载完成
  bool _isLoaded = false;

  @override
  void initState() {
    initData();
    _controller = new ScrollController();

    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _onLoadMore();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("发现"),
        ),
        body: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
            width: double.infinity,
            height: double.infinity,
            child: RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.builder(
                    itemCount: _hotDatas.length + 1,
                    controller: _controller,
                    itemBuilder: (context, index) {
                      if (index == _hotDatas.length) {
                        return Container(
                            width: double.infinity,
                            height: Gaps.getVGap(Gaps.getVGap(50)),
                            child: Center(
                              child: !_isEnded
                                  ? _onLoadingWidget()
                                  : _onEndWidget(),
                            ));
                      }
                      return DataItemWidget(context, _hotDatas[index]);
                    }))));
  }

  Widget _onLoadingWidget() {
    return Center(
      child: MyProgressAnimation(),
    );
  }

  Widget _onEndWidget() {
    return Stack(
      children: [
        //分界线
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
          width: double.infinity,
          height: Gaps.getVGap(1),
          color: Colors.grey,
        ),
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.black, width: 2),
                borderRadius: new BorderRadius.circular((10.0))),
            margin: EdgeInsets.fromLTRB(40, 25, 40, 25),
            child: Stack(
              children: [
                Positioned(
                    left: Gaps.hGap15,
                    top: Gaps.vGap10,
                    child: Text("我们总是在开始时毫无所谓，",
                        style: TextStyle(
                          fontSize: FontSize.sFont14,
                          fontWeight: FontWeight.bold,
                        ))),
                Positioned(
                    right: Gaps.hGap15,
                    bottom: Gaps.vGap10,
                    child: Text("在结束时痛彻心扉。",
                        style: TextStyle(
                          fontSize: FontSize.sFont14,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            ))
      ],
    );
  }

  void initData() async {
    _disCoverData = new DisCoverData();
    _hotDatas = await _disCoverData.loadHotData();
    if (mounted) setState(() {});
  }

  Future<void> _onRefresh() async {
    _hotDatas.clear();
    _hotDatas = await _disCoverData.reloadHot();
    if (mounted) setState(() {});
  }

  Future<void> _onLoadMore() async {
    _hotDatas.addAll(await _disCoverData.reloadHot());
    if (mounted) setState(() {});
  }
}
