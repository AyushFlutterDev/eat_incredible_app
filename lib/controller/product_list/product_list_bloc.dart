import 'package:bloc/bloc.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/model/productlist/productlist_model.dart';
import 'package:eat_incredible_app/repo/productlist_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc() : super(const _Initial()) {
    on<_FetchProductList>((event, emit) async {
      List<ProductlistModel> productList = [];
      emit(const _Loading());
      var result = await ProductListRepo().getProductListData(event.categoryId);

      result.when(
        success: (data) {
          for (var element in data) {
            productList.add(ProductlistModel.fromJson(element ?? {}));
          }
          emit(_Loaded(productList: productList));
        },
        failure: (error) {
          emit(_Failure(result: NetworkExceptions.getErrorMessage(error)));
        },
      );
    });
  }
}
