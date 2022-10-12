import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:eat_incredible_app/api/network_exception.dart';
import 'package:eat_incredible_app/model/login/login_model.dart';
import 'package:eat_incredible_app/repo/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      var result = await LoginRepo().login(event.phone, event.countryCode);
      result.when(
        success: (data) {
          log(data.toString());
          log(data['message'].toString());
          data['status'].toString() == "1"
              ? emit(_Loaded(logindata: LoginModel.fromJson(data)))
              : emit(_Failure(message: data['message']));
        },
        failure: (error) {
          emit(_Failure(message: NetworkExceptions.getErrorMessage(error)));
          emit(const _Initial());
        },
      );
    });
  }
}
