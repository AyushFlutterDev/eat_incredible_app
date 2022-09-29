part of 'itemsdemo_bloc.dart';

@freezed
class ItemsdemoState with _$ItemsdemoState {
  const factory ItemsdemoState.initial() = _Initial;
  const factory ItemsdemoState.loading() = _Loading;
  const factory ItemsdemoState.failure({required String result}) = _Failure;
  const factory ItemsdemoState.error({required NetworkExceptions error}) =
      _Error;
  const factory ItemsdemoState.loaded({required List<IteamData> iteamData}) =
      _Loaded;
}
