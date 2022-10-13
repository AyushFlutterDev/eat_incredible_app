part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.loaded(
      {required List<ProductDeatilsModel> productdetails}) = _Loaded;
  const factory ProductDetailsState.failure({required String result}) =
      _Failure;
}
