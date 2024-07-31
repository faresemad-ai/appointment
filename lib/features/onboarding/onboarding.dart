import 'package:appointment/core/theming/styles.dart';
import 'package:appointment/features/onboarding/widgets/doclogoandname.dart';
import 'package:appointment/features/onboarding/widgets/doctorimageandtext.dart';
import 'package:appointment/features/onboarding/widgets/getstartedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 10.h),
              child: Column(
                children: [
                const  DocLogoAndName(),
                  SizedBox(height: 5.h,),
                  const DoctorImageAndText(),
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc.',
                      style: TextStyles.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.h),
                     const GetStartedButton(),
                  ],
                ),
              )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
