import 'package:dio/dio.dart';

class ApiHelper {
  Dio _dio = Dio();
  late BaseOptions baseOptions;
  ApiHelper() {
    setUpOptions();
  }

  setUpOptions() {
    baseOptions = BaseOptions(
      baseUrl:
          'http://159.203.17.191/plesk-site-preview/jolly-ride.159-203-17-191.plesk.page/https/159.203.17.191/api/',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    _dio = Dio(baseOptions);
  }

  Future<dynamic> getRequest(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response result = await _dio.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> postRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response result = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> putRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response result = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response result = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> patchRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response result = await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
