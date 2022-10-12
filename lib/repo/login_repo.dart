import 'package:eat_incredible_app/api/api_result.dart';
import 'package:eat_incredible_app/api/network.dart';
import 'package:eat_incredible_app/api/network_exception.dart';

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
}
