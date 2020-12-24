import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/page/video/category_data.dart';
import 'package:flutterrightdemo/page/widget/progress_indicator.dart';
import 'package:flutterrightdemo/res/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'category_item_page.dart';

///

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State<CategoryPage> {
  CategoryData _categoryData;
  List<Category> _itemList;
  ScrollController _controller;
  bool _isEnded = false;
  bool _isLoaded = false;
  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(2, 1),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(3, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(4, 1),
  ];

  @override
  void initState() {
    _categoryData = new CategoryData();
    _itemList = [];
    _controller = new ScrollController();

    //加载数据
    _onLoadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("分类"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: Container(
              child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: _itemList.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItemWidget(_itemList[index]);
            },
            staggeredTileBuilder: (int index) {
              //return new StaggeredTile.count(2, index.isEven ? 2 : 1);
              return _staggeredTiles[index % 10];
            },
            mainAxisSpacing: Gaps.hGap10,
            crossAxisSpacing: Gaps.vGap10,
          )),
        ),
      ),
    );
  }

  Future<void> _onLoadData() async {
    _itemList = await _categoryData.loadCategoryData();
    _isLoaded = true;
    debugPrint("=================${_itemList.length}=====");
    if (mounted) setState(() {});
  }

  Future<void> _onRefresh() async {
    _isEnded = false;
    _itemList.clear();
    _itemList = await _categoryData.reloadCategory();
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}

class CategoryItemWidget extends StatelessWidget {
  Category item;

  CategoryItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: new Container(
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
              image: DecorationImage(
                image: NetworkImage(
                  item.bgPicture,
                ),
                fit: BoxFit.cover,
              )),
          child: Container(
              child: Center(
                  child: Text('#' + item.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.sFont16,
                      ))))),
      onTap: () {
        Fluttertoast.showToast(msg: "${item.id}");
        Navigator.push(context, _createRouteAnimation(item));
      },
    );
  }

  _createRouteAnimation(Category item) {
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
      builder: (context) => CategoryItemPage(item),
    );
  }
}
