part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded(
      {required List<CategoryModel> categoryData}) = _Loaded;
  const factory CategoryState.failure({required String result}) = _Failure;
}
