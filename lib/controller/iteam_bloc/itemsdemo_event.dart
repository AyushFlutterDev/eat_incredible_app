part of 'itemsdemo_bloc.dart';

@freezed
class ItemsdemoEvent with _$ItemsdemoEvent {
  const factory ItemsdemoEvent.started() = _Started;
  const factory ItemsdemoEvent.getItemsData({required String cardId}) =
      _GetItemsData;
}
