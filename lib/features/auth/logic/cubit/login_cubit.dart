import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/features/auth/data/models/login_request_body.dart';
import 'package:pro_mina/features/auth/data/models/login_response.dart';
import 'package:pro_mina/features/auth/data/repos/login_repo.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(LoginResponse()));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
