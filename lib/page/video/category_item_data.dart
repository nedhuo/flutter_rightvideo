import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/repository/discover_repository.dart';

class CategoryItemData {
  String _initUrl = Api.categoryDetailsUrl;
  String _nextUrl;
  DiscoverRepository _repository;

  void _init() {
    _repository = new DiscoverRepository();
  }

  Future<List<ItemList>> loadCategoryItemData(int id) async {
    if (_repository == null) {
      _init();
      _nextUrl = _initUrl;
    }
    if (null == _nextUrl || _nextUrl.isEmpty) {
      return null;
    }
    DisCover disCover = await _repository.requestCategoryItem(_nextUrl, id);
    _nextUrl = disCover.nextPageUrl;
    return disCover.itemList;
  }

  Future<List<ItemList>> reloadCategoryItem(int id) async {
    DisCover disCover = await _repository.requestCategoryItem(_initUrl, id);
    _nextUrl = disCover.nextPageUrl;
    return disCover.itemList;
  }
}
