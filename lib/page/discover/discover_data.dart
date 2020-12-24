import 'package:flutter/widgets.dart';
import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/repository/discover_repository.dart';

class DisCoverData {
  DiscoverRepository _repository;
  String _url = Api.discoverUrl;
  String _initHotUrl;
  String _initCategoryUrl;
  String _hotNextUrl;

  String _categoryNextUrl;

  Future<void> _init() async {
    _repository = new DiscoverRepository();
    await _repository.requestDisCoverPage(_url).then((value) {
      TabInfo tabInfo = value;
      List<TabList> tabList = tabInfo.tabInfo;
      _hotNextUrl =
          tabList[0].apiUrl.substring(tabList[0].apiUrl.indexOf('api'));
      _initHotUrl = _hotNextUrl;
      debugPrint("------discoverData--hoturl--${_hotNextUrl}");
      _categoryNextUrl =
          tabList[1].apiUrl.substring(tabList[1].apiUrl.indexOf('api'));
      _initCategoryUrl = _categoryNextUrl;
    });
//    debugPrint("--DisCoverData-url===${tabInfo.toJson().toString()}----");

//    debugPrint("--DisCoverData-url===${ tabList[0].apiUrl}----");
    //0 : 热门
    //1 : 分类
    //2 : 作者
    //加载两个Url
  }

  Future<List<ItemList>> loadHotData() async {
    if (_repository == null) {
      await _init();
    }
    DisCover hotData = await _repository.requestHot(_hotNextUrl);
    _hotNextUrl =
        hotData.nextPageUrl.substring(hotData.nextPageUrl.indexOf('api'));
    return hotData.itemList;
  }

  Future<List<ItemList>> loadCateData() async {
    if (_repository == null) {
      await _init();
    }
    DisCover categoryData = await _repository.requestHot(_categoryNextUrl);
    _categoryNextUrl = categoryData.nextPageUrl
        .substring(categoryData.nextPageUrl.indexOf('api'));
    return categoryData.itemList;
  }

  Future<List<ItemList>> reloadHot() async {
    DisCover categoryData = await _repository.requestHot(_initHotUrl);
    _categoryNextUrl = categoryData.nextPageUrl
        .replaceFirst("http://baobab.kaiyanapp.com/", "");
    return categoryData.itemList;
  }

  Future<List<ItemList>> reloadCategory() async {
    DisCover categoryData = await _repository.requestHot(_initCategoryUrl);
    _categoryNextUrl = categoryData.nextPageUrl
        .replaceFirst("http://baobab.kaiyanapp.com/", "");
    return categoryData.itemList;
  }
}
