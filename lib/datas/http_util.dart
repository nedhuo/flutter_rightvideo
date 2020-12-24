import 'package:dio/dio.dart';

import 'api.dart';

const httpHeaders = {
  'Accept': 'application/json, text/plain, */*',
  'Accept-Encoding': 'gzip, deflate, br',
  'Accept-Language': 'zh-CN,zh;q=0.9',
  'Connection': 'keep-alive',
  'Content-Type': 'application/json',
  'User-Agent':
      'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1',
};

class HttpUtil {
  Dio _dio;
  Options _options;

  static BaseOptions _baseOptions = BaseOptions(
    connectTimeout: 5000,
    baseUrl: Api.baseUrl,
  );

  /// 构造 Dio 对象
  Dio buildDio() {
    _dio ??= Dio(_baseOptions);

    /// _dio.interceptors.add(LogInterceptor());
    return _dio;
  }

  Options buildOptions() {
    _options ??= Options(
      receiveTimeout: 5000,
      method: 'get',
      //  headers: httpHeaders,
    );
    return _options;
  }

  Future<dynamic> request(String url, {requestParam, method = "get"}) async {
    try {
      Response response = await buildDio()
          .get(url, queryParameters: requestParam, options: buildOptions());
      if (response.statusCode == 200) {
//        debugPrint("--HttpUtil--${response.data}");
        return response.data;
      }
    } catch (exception) {
//      debugPrint("--HomeRepository--$exception");
      return Future.error(exception);
    }
  }

  /// 执行 get 请求
  doGet(String url,
      {queryParameters, options, Function success, Function fail}) async {
    print('http request url: $url');
    try {
      Response response = await buildDio().get(
        url,
        queryParameters: queryParameters,
        options: _options,
      );
      success(response);
      //print('http response: $response');
    } catch (exception) {
      fail(exception);
//      print('http request fail: $url --- $exception');
    }
  }
}
