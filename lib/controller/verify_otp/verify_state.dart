part of 'verify_bloc.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial() = _Initial;
  const factory VerifyState.loading() = _Loading;
  const factory VerifyState.loaded({required VerifyModel verificationdata}) =
      _Loaded;
  const factory VerifyState.failure({required String message}) = _Failure;
}
