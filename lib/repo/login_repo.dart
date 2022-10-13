import 'package:eat_incredible_app/api/api_result.dart';
import 'package:eat_incredible_app/api/network.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/views/signup_page/signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/barrel.dart';

class LoginRepo {
  static final Network network = Network();
  Future<ApiResult> login(String phone, String countryCode) async {
    try {
      var res = await network.postlogin(phone, countryCode);
      return ApiResult.success(data: res.data);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult> verify(String phone, String otp) async {
    try {
      var res = await network.verifyOtp(phone, otp);
      return ApiResult.success(data: res.data);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult> logout(String phone) async {
    try {
      var res = await network.logout(phone);

      if (res.data['status'] == 1) {
        var prefs = await SharedPreferences.getInstance();
        prefs.clear().whenComplete(() => Get.offAll(() => const SignupPage()));
      }
      return ApiResult.success(data: res.data);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
