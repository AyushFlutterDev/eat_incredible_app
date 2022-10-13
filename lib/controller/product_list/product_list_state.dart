part of 'product_list_bloc.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = _Initial;
  const factory ProductListState.loading() = _Loading;
  const factory ProductListState.loaded({required List<ProductlistModel> productList}) =
      _Loaded;
  const factory ProductListState.failure({required String result}) = _Failure;
}
