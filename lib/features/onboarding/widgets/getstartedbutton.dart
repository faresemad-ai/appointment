import 'package:appointment/core/helpers/extensions.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ElevatedButton.styleFrom(
           minimumSize: Size(300, 50),
          backgroundColor: ColorManager.mainblue, // Background color
        ),
        child: Text("Get Started", style: TextStyles.font20WhiteSemiBold));
  }
}
