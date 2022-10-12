part of 'verify_bloc.dart';

@freezed
class VerifyEvent with _$VerifyEvent {
  const factory VerifyEvent.started() = _Started;
  const factory VerifyEvent.verify(
      {required String phone, required String otp}) = _Verify;
}
