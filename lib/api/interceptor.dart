import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eat_incredible_app/repo/url_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Interceptors extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (options.path.contains(UrlRepo.logout)) {
      String msg =
          prefs.getString('message') ?? 'nothing data in  local Storage';
      log(msg);
      options.headers['Authorization'] = prefs.getString('token') ?? '';
    }

    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }
}
