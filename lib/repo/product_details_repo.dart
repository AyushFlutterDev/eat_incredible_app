import 'package:eat_incredible_app/api/api_result.dart';
import 'package:eat_incredible_app/api/network.dart';
import 'package:eat_incredible_app/api/network_exception.dart';

class ProductDetailsRepo {
  static final Network network = Network();
  Future<ApiResult> getProductDetailsData(String id) async {
    try {
      var res = await network.getProductDetails(id);
      return ApiResult.success(data: res.data);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
