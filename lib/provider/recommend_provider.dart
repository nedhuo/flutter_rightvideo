import 'package:flutter/cupertino.dart';
import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/repository/selected_repository.dart';
import 'package:flutterrightdemo/provider/base_provider.dart';

class RecommendProvider extends BaseProvider with ChangeNotifier {
  HomeRepository _repository;
  String _initUrl = Api.recommendUrl;
  String _nextUrl;

  //数据一
  /// "type":"squareCardOfCommunityContent",
//      "data":{
//          "dataType":"SquareContentCard",
//          "title":"主题创作广场",
//           "subTitle":"发布你的作品和日常",
//           "bgPicture":"http://img.kaiyanapp.com/04eef7e9f3b14a597bd04a8d81a4c8f3.png?imageMogr2/quality/60/format/jpg",
//           "actionUrl":"eyepetizer://community/tagSquare?tabIndex=0"
//         },
//        "trackingData":null,
//         "tag":null,
//         "id":0,
//         "adIndex":-1
  //
  List<ItemList> _subjects;
  List<ItemList> _banners;
  List<ItemList> _communityDatas;
  String _errorMsg = "RecommendPage数据获取异常";

  get subjects => _subjects;

  get banners => _banners;

  get communityDatas => _communityDatas;

  RecommendProvider() {
    _repository = new HomeRepository();
    _communityDatas = [];
    _banners = [];
    _subjects = [];
    init();
  }

  //调用基础元素

  @override
  init() async {
    DisCover disCover = await _repository.requestRecommendData(_initUrl);
    if (disCover != null) {
      _communityDatas.addAll(disCover.itemList);
      _nextUrl = disCover.nextPageUrl;
      _subjects = _communityDatas[0].data.itemList;
      _banners = _communityDatas[1].data.itemList;

      _communityDatas.removeAt(1);
      _communityDatas.removeAt(0);
    } else {
      debugPrint("==recommend_provider==${_errorMsg}====");
    }
    await Future.delayed(Duration(seconds: 1));
    notifyListeners();
  }

  @override
  Future<void> loadMoreData() async {
    DisCover disCover = await _repository.requestRecommendData(_nextUrl);
    if (disCover != null) {
      _communityDatas.addAll(disCover.itemList);
      _nextUrl = disCover.nextPageUrl;
    } else {
      debugPrint("==recommend_provider==${_errorMsg}====");
    }
    notifyListeners();
  }

  @override
  Future<void> reLoadData() async {
    _communityDatas.clear();
    init();
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
