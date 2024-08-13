import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:appointment/core/widgets/app_textform_field.dart';
import 'package:appointment/features/login/data/models/login_request_body.dart';
import 'package:appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment/features/login/ui/widgets/alreadyhaveanaccount.dart';
import 'package:appointment/features/login/ui/widgets/emailandpassword.dart';
import 'package:appointment/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:appointment/features/login/ui/widgets/termsandcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  "We\'re excited to have you back, can\'t wait to \n see what you have been up to since you \n last logged in",
                  style: TextStyles.font14GrayRegular,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    const Emailandpassword(),
                    SizedBox(
                      height: 7.h,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'forgot password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font18WhiteSemiBold,
                        onPressed: () {
                          ValidateThenDoLogin(context);
                        }),
                    SizedBox(
                      height: 5.h,
                    ),
                    TermsAndConditionsText(),
                    SizedBox(
                      height: 3.h,
                    ),
                    DontHaveAccountText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void ValidateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text));
  }
}
