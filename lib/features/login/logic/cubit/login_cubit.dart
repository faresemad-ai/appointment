import 'package:appointment/features/login/data/models/login_request_body.dart';
import 'package:appointment/features/login/data/repos/login_repo.dart';
import 'package:appointment/features/login/logic/cubit/login_state.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

 
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo ;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
   
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController= TextEditingController();
    final formKey = GlobalKey<FormState>();
void emitLoginState(LoginRequestBody loginResponseBody) async{
  emit(const LoginState.loading());
  final response =await _loginRepo.login(loginResponseBody);
 response.when(success: ( loginResponse){
emit(LoginState.success(loginResponse));
 }, failure: (error){
  emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
 });

}
}
