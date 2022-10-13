import 'package:eat_incredible_app/api/api_result.dart';
import 'package:eat_incredible_app/api/network.dart';
import 'package:eat_incredible_app/api/network_exception.dart';

class GetCategoryrepo {
  static final Network network = Network();

  Future<ApiResult> getCategoriesData() async {
    try {
      var res = await network.getCategories();
      return ApiResult.success(data: res.data);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
