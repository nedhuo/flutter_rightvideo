import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';

import '../http_util.dart';

class DiscoverRepository {
  HttpUtil _httpUtil = new HttpUtil();

  Future<TabInfo> requestDisCoverPage(String url) async {
    debugPrint("--DisCoverRepository--$url----");
    var json = await _httpUtil.request(url);
    debugPrint("--DisCoverRepository--$json");
    try {
      TabInfo tabInfo = TabInfo.fromJson(json);
      debugPrint("--DisCoverRepositoryHot数据--${tabInfo.tabInfo.length}");
      return tabInfo;
    } catch (exception) {
      debugPrint("--DisCoverRepository-----$exception");
    }
  }

  // ignore: missing_return
  Future<List<Category>> requestCategory(String url) async {
    debugPrint("--DisCoverRepository--$url----");
    var json = await _httpUtil.request(url);
    try {
      // debugPrint("-----------${json}--------------------");

      return (json as List)
          ?.map((e) =>
              e == null ? null : Category.fromJson(e as Map<String, dynamic>))
          ?.toList();
    } catch (exception) {
      debugPrint("--DisCoverRepositoryCate--$exception");
    }
  }

  Future<DisCover> requestHot(String url) async {
    debugPrint("--DisCoverRepository-url-$url----");
    var json = await _httpUtil.request(url);
    try {
      return DisCover.fromJson(json);
    } catch (exception) {
      debugPrint("--DisCoverRepository--$exception");
    }
  }

  Future<DisCover> requestCategoryItem(String url, int id) async {
    debugPrint("--DisCoverRepository-categoryItemUrl-$url----");
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    var formData = FormData.fromMap({
      'id': id,
      'udid': 'd2807c895f0348a180148c9dfa6f2feeac0781b5',
      "deviceModel": androidInfo.device,
    });
    Map map = new Map<String, dynamic>.from( {
      'id': id,
      'udid': 'd2807c895f0348a180148c9dfa6f2feeac0781b5',
      "deviceModel": androidInfo.device,
    });

    //debugPrint("--DisCoverRepository-param-${formData.toString()}----");
    var json = await _httpUtil.request(url, requestParam: map);
    try {
      return DisCover.fromJson(json);
    } catch (exception) {
      debugPrint("--DisCoverRepository--$exception");
    }
  }
}
