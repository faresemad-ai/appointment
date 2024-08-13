import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:appointment/features/login/ui/widgets/termsandcondition.dart';
import 'package:appointment/features/register/logic/cubit/sign_up_cubit.dart';
import 'package:appointment/features/register/ui/widgets/alreadyhaveaccount.dart';
import 'package:appointment/features/register/ui/widgets/signup_form.dart';
import 'package:appointment/features/register/ui/widgets/signuplistener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  'Sign Up',
                  style: TextStyles.font24BlueBold,
                ),
              SizedBox(height: 8,),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
               SizedBox(height: 30,),
                Column(
                  children: [
                    const SignupForm(),
                   SizedBox(height: 30,),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font18WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    SizedBox(height: 16,),
                    const TermsAndConditionsText(),
                    SizedBox(height: 30,),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}