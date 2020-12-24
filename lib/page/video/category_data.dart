import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_discover.dart';
import 'package:flutterrightdemo/datas/repository/discover_repository.dart';

///其实这一页数据时discover的一个分支
///
///
class CategoryData {
  DiscoverRepository _repository;
  String _initUrl = Api.categoryUrl;
  List<Category> _categorylist;

  Future<List<Category>> _init() async {
    _repository = new DiscoverRepository();
  }

  Future<List<Category>> loadCategoryData() async {
    if (_repository == null) {
      _init();
    }
    _categorylist = await _repository.requestCategory(_initUrl);
    return _categorylist;
  }

  Future<List<Category>> reloadCategory() async {
    _categorylist = await _repository.requestCategory(_initUrl);
    return _categorylist;
  }
}
