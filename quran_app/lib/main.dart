import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quran_app/features/auth/login/login_page.dart';
//import 'package:quran_app/features/onboarding/onboarding_page.dart';
import 'package:quran_app/generated/l10n.dart';
import 'package:quran_app/theme/quran_app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.currentLocale,
      builder: (context, locale, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme(),
          localizationsDelegates: const[
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: locale,
          supportedLocales: const [
            Locale("en"), // English
            Locale("ar"), // arabic
          ],
          home: const LoginPage(),
        );
      }
    );
  }
}