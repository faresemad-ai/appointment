import 'package:appointment/core/helpers/app_rejex.dart';
import 'package:appointment/core/widgets/app_textform_field.dart';
import 'package:appointment/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Emailandpassword extends StatefulWidget {
  const Emailandpassword({super.key});

  @override
  State<Emailandpassword> createState() => _EmailandpasswordState();
}

class _EmailandpasswordState extends State<Emailandpassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    SetUpFunctionControllerListener();
    super.initState();
  }


  void  SetUpFunctionControllerListener(){
    passwordController.addListener(( ){
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
         hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'email',
            validator: (String? v) {
              if (v == null || v.isEmpty || !AppRegex.isEmailValid(v)) {
                return "please enter an email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(
            height: 7.h,
          ),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                )),
            validator: (String? v) {
              if (v == null || v.isEmpty) {
                return "please enter a password";
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }
  @override
  void dispose() {
passwordController.dispose();
    super.dispose();
  }
}
