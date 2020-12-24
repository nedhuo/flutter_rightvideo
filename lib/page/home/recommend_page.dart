import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'file:///D:/workSpace/android/flutter_rightvideo/lib/page/widget/banner_widget.dart';
import 'package:flutterrightdemo/page/widget/item_widget.dart';
import 'package:flutterrightdemo/page/widget/progress_indicator.dart';
import 'package:flutterrightdemo/provider/recommend_provider.dart';
import 'package:flutterrightdemo/res/styles.dart';
import 'package:provider/provider.dart';

class RecommendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecommendPageState();
  }
}

class _RecommendPageState extends State<RecommendPage> {
  EasyRefreshController _controller;
  bool isFirst = false;
  GlobalKey _key = new GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = new EasyRefreshController();
    isFirst = true;
    //添加监听
//    _controller.addListener(() {
//      if (_controller.position.maxScrollExtent == _controller.position.pixels) {
//        _provider?.loadMoreData();
//      }
//    });


  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (isFirst) {
      super.didChangeDependencies();
    } else {}
    isFirst = false;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecommendProvider>(
      create: (_) => RecommendProvider(),
      child: Consumer<RecommendProvider>(builder: (ctx, provider, child) {
        return provider.communityDatas.length == 0
            ? MyProgressAnimation()
            : Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: EasyRefresh.custom(
              controller: _controller,
              onRefresh: provider.reLoadData,
              onLoad: provider.loadMoreData,
              slivers: [

                ///主题
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return SquareCardWidget(
                          provider.subjects[index].data);
                    },
                    childCount: provider.subjects.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2),
                ),

                ///间隔
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 3),
                ),

                ///Banner
                SliverToBoxAdapter(
                  child: Container(
                    height: Gaps.getVGap(180),
                    child: BannerWidget(provider.banners),
                  ),
                ),

                ///间隔
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 3),
                ),

                ///瀑布流
                SliverStaggeredGrid.countBuilder(
                  key: _key,
                  crossAxisCount: 4,
                  mainAxisSpacing: Gaps.vGap10,
                  crossAxisSpacing: Gaps.hGap15,
                  staggeredTileBuilder: (int index) =>
                  new StaggeredTile.fit(2),
                  itemBuilder: (context, index) {
                    return CommunityWidget(provider.communityDatas[index]);
                  },
                  itemCount: provider.communityDatas.length,
                )
              ],
            ));
      }),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    // super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller?.dispose();
  }
}
