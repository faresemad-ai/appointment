import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/core/widgets/app_text_button.dart';
import 'package:appointment/core/widgets/app_textform_field.dart';
import 'package:appointment/features/login/ui/widgets/alreadyhaveanaccount.dart';
import 'package:appointment/features/login/ui/widgets/termsandcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText = true;
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
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'email',
                        validator: (String? v) {},
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      AppTextFormField(
                        hintText: 'password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            )),
                        validator: (String? v) {},
                      ),
                      SizedBox(
                        height: 10.h,
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
                          onPressed: ( ){}),
                          SizedBox(height: 20.h,),
                          TermsAndConditionsText(),
                           SizedBox(
                        height: 10.h,
                      ),
                          DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
