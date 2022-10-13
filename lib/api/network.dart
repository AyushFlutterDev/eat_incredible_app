import 'package:dio/dio.dart';
import 'package:eat_incredible_app/api/api_helper.dart';
import 'package:eat_incredible_app/repo/url_repo.dart';

class Network {
  final client = ApiHelper();
  Future<Response> postlogin(String phone, String countryCode) async {
    return await client.postRequest(UrlRepo.loginwithOtp, data: {
      'phone': phone,
    });
  }

  Future<Response> verifyOtp(String phone, String otp) async {
    return await client.postRequest(UrlRepo.verifyOtp, data: {
      "phone": phone,
      "otp": int.parse(otp),
    });
  }

  Future<Response> logout(String phone) async {
    return await client.postRequest(UrlRepo.logout);
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
