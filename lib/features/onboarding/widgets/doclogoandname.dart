import 'package:appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo.svg" , height: 50 , width: 50,),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "DocDoc",
          style: TextStyles.font24Black700Weight,
        )
      ],
    );
  }
}
