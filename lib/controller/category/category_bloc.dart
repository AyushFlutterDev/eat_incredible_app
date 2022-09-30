import 'package:bloc/bloc.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/model/category/category_model.dart';
import 'package:eat_incredible_app/repo/category_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const _Initial()) {
    on<_GetCategory>((event, emit) async {
      List<CategoryModel> categoryDataList = [];
      emit(const _Loading());
      var result = await GetCategoryrepo().getCategoriesData();
      result.when(
        success: (data) {
          for (var element in data) {
            categoryDataList.add(CategoryModel.fromJson(element ?? {}));
          }
          emit(_Loaded(categoryData: categoryDataList));
        },
        failure: (error) {
          emit(_Failure(result: NetworkExceptions.getErrorMessage(error)));
        },
      );
    });
  }
}
