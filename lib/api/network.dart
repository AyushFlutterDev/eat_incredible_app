import 'package:dio/dio.dart';
import 'package:eat_incredible_app/api/api_helper.dart';
import 'package:eat_incredible_app/repo/url_repo.dart';

class Network {
  final client = ApiHelper();

  Future<Response> organizationList(String url) async {
    return await client.getRequest(UrlRepo.loginUrl);
  }

  Future getOrganizationDetails(String url) async {
    return await client.postRequest(
      url,
      data: {},
    );
  }
  
}
