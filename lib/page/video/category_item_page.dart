import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/page/video/category_item_data.dart';
import 'package:flutterrightdemo/page/widget/item_widget.dart';
import 'package:flutterrightdemo/page/widget/progress_indicator.dart';
import 'package:flutterrightdemo/res/styles.dart';

class CategoryItemPage extends StatefulWidget {
  Category item;

  CategoryItemPage(this.item);

  @override
  State<StatefulWidget> createState() => CategoryItemState();
}

class CategoryItemState extends State<CategoryItemPage> {
  ScrollController _controller;
  List<ItemList> _items;
  CategoryItemData _dataUtil;

  //数据是否加载完毕
  bool _isEnded = false;

  //加载完成
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();

    _controller = new ScrollController();
    _dataUtil = new CategoryItemData();
    _items = [];

    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _loadData();
      }
    });
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoaded
          ? RefreshIndicator(
              onRefresh: _onRefresh,
              child: CustomScrollView(
                controller: _controller,
                slivers: [
                  SliverAppBar(
                      leading: GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      title: Text(
                        widget.item.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      expandedHeight: Gaps.getVGap(180),
                      pinned: true,
                      floating: false,
                      snap: false,
                      primary: true,
                      backgroundColor: Colors.grey,
                      flexibleSpace: FlexibleSpaceBar(
                          background: Image.network(
                        widget.item.bgPicture,
                        fit: BoxFit.cover,
                      ))),
                  SliverToBoxAdapter(
                      child: Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: ListView.builder(
                            itemCount: _items.length + 1,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              if (index == _items.length) {
                                return !_isEnded
                                    ? _onLoadingWidget()
                                    : _onEndWidget();
                              }
                              return DataItemWidget(context, _items[index]);
                            },
                          )))
                ],
              ))
          : Center(
              child: MyProgressAnimation(),
            ),
    );
  }

  Future<void> _onRefresh() async {
    _isEnded = false;
    var list = await _dataUtil.reloadCategoryItem(widget.item.id);
    if (list != null) {
      _items.clear();
      _items.addAll(list);
      if (mounted) setState(() {});
    }
  }

  Future<void> _loadData() async {
    var list = await _dataUtil.loadCategoryItemData(widget.item.id);
    if (list == null) {
      _isEnded = true;
    } else {
      _isLoaded = true;
      _items.addAll(list);
    }
    //防止过快消失
    await Future.delayed(Duration(seconds: 1));
    if (mounted) setState(() {});
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
        child: Column(
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

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }
}
