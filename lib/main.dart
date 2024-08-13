import 'dart:async';

import 'package:appointment/core/di/dependency_injection.dart';
import 'package:appointment/core/routing/app_router.dart';
import 'package:appointment/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}


 