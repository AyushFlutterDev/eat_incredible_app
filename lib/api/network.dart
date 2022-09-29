import 'package:dio/dio.dart';
import 'package:eat_incredible_app/api/api_helper.dart';
import 'package:eat_incredible_app/repo/url_repo.dart';

class Network {
  final client = ApiHelper();
  Future<Response> login(int phoneNumber) async {
    return await client.postRequest(UrlRepo.login, data: {
      'phoneNumber': phoneNumber,
    });
  }

  Future<Response> listItemsDemo() async {
    return await client.getRequest(UrlRepo.product);
  }
}
