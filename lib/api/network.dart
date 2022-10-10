import 'package:dio/dio.dart';
import 'package:eat_incredible_app/api/api_helper.dart';
import 'package:eat_incredible_app/repo/url_repo.dart';

class Network {
  final client = ApiHelper();
  Future<Response> postlogin(String email) async {
    return await client.postRequest(UrlRepo.loginwithOtp, data: {
      'email': email,
    });
  }

  Future<Response> postverify(String email, String code) async {
    return await client.postRequest(UrlRepo.verifyOtp, data: {
      'email': email,
      'code': code,
    });
  }

  Future<Response> getCategories() async {
    return await client.getRequest(UrlRepo.category);
  }

  Future<Response> getProductList() async {
    return await client.getRequest(UrlRepo.productList);
  }

  Future<Response> getProductListByCategory(String categoryId) async {
    return await client.getRequest(UrlRepo.productListCategory(categoryId));
  }

  Future<Response> getProductDetails(String productid) async {
    return await client.getRequest(UrlRepo.productDetail(productid));
  }
}
