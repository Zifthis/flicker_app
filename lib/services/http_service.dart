// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flicker_app/model/app_config.dart';
import 'package:get_it/get_it.dart';

class HttpService {
  final Dio dio = Dio();
  final getIt = GetIt.instance;

  late final String _baseUrl;
  late final String _api_key;

  HttpService() {
    AppConfig config = getIt.get<AppConfig>();
    _baseUrl = config.BASE_API_URL;
    _api_key = config.API_KEY;
  }

  Future<Response> get(String _path, {Map<String, dynamic>? query}) async {
    try {
      String _url = '$_baseUrl$_path';
      Map<String, dynamic> _query = {'api_key': _api_key, 'language': 'en-US'};
      if (query != null) {
        _query.addAll(query);
      }
      return await dio.get(_url, queryParameters: _query);
    } on DioError catch (e) {
      print('Unable to perform get request.');
      print('DioError:$e');
      rethrow;
    }
  }
}
