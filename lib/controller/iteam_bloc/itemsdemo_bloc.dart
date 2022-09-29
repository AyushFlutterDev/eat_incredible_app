import 'package:bloc/bloc.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/model/items_data_model.dart';
import 'package:eat_incredible_app/repo/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itemsdemo_event.dart';
part 'itemsdemo_state.dart';
part 'itemsdemo_bloc.freezed.dart';

class ItemsdemoBloc extends Bloc<ItemsdemoEvent, ItemsdemoState> {
  ItemsdemoBloc() : super(const _Initial()) {
    on<_GetItemsData>((event, emit) async {
      List<IteamData> itemsData = [];
      emit(const _Loading());
      var orgdetails = await LoginRepo().listItemsDemo();
      orgdetails.when(
        success: (result) {
          itemsData = result['data']
              .map<IteamData>((item) => IteamData.fromJson(item))
              .toList();
          emit(_Loaded(iteamData: itemsData));
        },
        failure: (error) {
          emit(_Failure(result: error.toString()));
        },
      );
    });
  }
}
