import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/model/product_details/product_details_model.dart';
import 'package:eat_incredible_app/repo/product_details_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc() : super(const _Initial()) {
    on<_GetProductDetails>((event, emit) async {
      List<ProductDeatilsModel> productDetails = [];

      emit(const _Loading());
      var result =
          await ProductDetailsRepo().getProductDetailsData(event.productId);
      result.when(
        success: (data) {
          log(data.toString());
          for (var element in data) {
            productDetails.add(ProductDeatilsModel.fromJson(element ?? {}));
          }
          emit(_Loaded(productdetails: productDetails));
        },
        failure: (error) {
          emit(_Failure(result: NetworkExceptions.getErrorMessage(error)));
        },
      );
    });
  }
}
