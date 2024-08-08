import 'package:appointment/core/routing/app_router.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter ;
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 312),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "doc App",
        theme: ThemeData(primaryColor: ColorManager.mainblue),
        initialRoute: Routes.SplashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}