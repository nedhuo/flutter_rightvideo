import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterrightdemo/datas/api.dart';
import 'package:flutterrightdemo/datas/repository/selected_repository.dart';
///Bloc创建时即加载数据
///
class HomeBloc extends Bloc {
  HomeRepository homeRepository;

  String url = Api.homePageUrl;

  HomeBloc(initialState) : super(initialState) {
  }

  @override
  Stream mapEventToState(event) {
    // 将事件转为event
    throw UnimplementedError();
  }

}
