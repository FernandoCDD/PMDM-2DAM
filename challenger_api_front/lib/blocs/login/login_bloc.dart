import 'dart:async';

import 'package:challenger_api_front/models/dto/login_dto.dart';
import 'package:challenger_api_front/models/response/login_response.dart';
import 'package:challenger_api_front/repositories/auth/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  LoginBloc(this.authRepository) : super(LoginInitial()) {
    on<GetRequestTokenEvent>(_getRequestToken);
    on<DoLoginEvent>(_doLogin);
  }

  void _getRequestToken(
      GetRequestTokenEvent event, Emitter<LoginState> emit) async {
    try {
      final SharedPreferences prefs = await _prefs;
      final response = await authRepository.getRequestToken();
      prefs.setString('request_token', response.requestToken!);
      emit(GetRequestTokenSuccess());
      return;
    } on Exception catch (e) {
      emit(GetRequestTokenError(e.toString()));
    }
  }

  void _doLogin(DoLoginEvent event, Emitter<LoginState> emit) async {
    emit(DoLoginLoading());
    final SharedPreferences prefs = await _prefs;
    final String requestToken = prefs.getString('request_token') ?? '';

    try {
      final LoginDto loginDto = LoginDto(
          username: event.username,
          password: event.password,
          requestToken: requestToken);
      final response = await authRepository.login(loginDto);
      emit(DoLoginSuccess(response));
      return;
    } on Exception catch (e) {
      emit(DoLoginError(e.toString()));
    }
  }
}
