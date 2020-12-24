import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/models/model_data.dart';
import 'package:flutterrightdemo/datas/models/model_selected.dart';
import 'package:flutterrightdemo/datas/repository/selected_repository.dart';

class HomeDataUtil {
  HomeRepository _repository;

  //初始Url
  String _initUrl = Api.homePageUrl;

  //下一页Url
  String _nextUrl;

  Future<List<ItemList>> _init() async {
    _repository = new HomeRepository();
    SelectedBean selectedBean = await _repository.requestHomeData(_initUrl);
    _nextUrl = selectedBean.nextPageUrl;
    return selectedBean.itemList;
  }

  /// 下拉刷新
  /// jsonRootBean 对象保存，是为了保留nextPageUrl
  Future<List<ItemList>> reload() async {
    SelectedBean selectedBean = await _repository.requestHomeData(_nextUrl);
    _nextUrl = selectedBean.nextPageUrl;
    return selectedBean.itemList;
  }

  Future<List<ItemList>> loadHomeData() async {
    if (_repository == null) {
      return await _init();
    }
    //数据结束
    if (_nextUrl == null) {
      return null;
    }
    SelectedBean selectedBean = await _repository.requestHomeData(_nextUrl);
    _nextUrl = selectedBean.nextPageUrl;
    return selectedBean.itemList;
  }
}
