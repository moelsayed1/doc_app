import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Core/di/dependency_injection.dart';
import 'Core/routing/app_router.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupGetIt();
  runApp(
    DocApp(
      flavor: "development",
      appRouter: AppRouter(),
    ),
  );
  FlutterNativeSplash.remove();
}
