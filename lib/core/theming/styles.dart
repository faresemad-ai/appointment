import 'package:appointment/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w700);
 
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: ColorManager.mainblue,
      fontWeight: FontWeight.w700);
  
   static TextStyle font13GrayRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static TextStyle font20WhiteSemiBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

}
