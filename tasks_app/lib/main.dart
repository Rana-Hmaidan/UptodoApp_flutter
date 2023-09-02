import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tasks_app/features/onboarding/onboarding_page.dart';
import 'package:tasks_app/theme/tasks_app_theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const OnBoardingPage(),
    );
  }
}