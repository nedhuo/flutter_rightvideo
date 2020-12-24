import 'package:flutter/cupertino.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/models/model_selected.dart';

import '../http_util.dart';

class HomeRepository {
  HttpUtil _httpUtil = new HttpUtil();

  ///数据问题
  /// selected 链接获取8个page之后的nextPageUrl为null
  ///
  Future<SelectedBean> requestHomeData(String url) async {
    debugPrint("--HomeRepository-url---$url----");
    var json = await _httpUtil.request(url);
    try {
      //debugPrint("--HomeRepository--${json}");
      SelectedBean selectedBean = SelectedBean.fromJson(json);
//      debugPrint("--HomeRepository--${selectedBean.itemList[0]}");
      return selectedBean;
    } catch (exception) {
      debugPrint("--HomeRepository--$exception");
    }
  }

  Future<DisCover> requestRecommendData(String url) async {
    debugPrint("--HomeRepository-RecommendData---$url----");
    var json = await _httpUtil.request(url);
    try {
      //debugPrint("--HomeRepository--${json}");
      DisCover disCover = DisCover.fromJson(json);
      return disCover;
    } catch (exception) {
      debugPrint("--HomeRepository--$exception");
    }
  }
}
