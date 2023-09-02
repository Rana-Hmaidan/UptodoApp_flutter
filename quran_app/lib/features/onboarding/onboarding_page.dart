import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/theme.dart';
import 'package:quran_app/generated/l10n.dart';
import 'package:quran_app/theme/quran_app_theme/app_theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).register),
        leading: IconButton(
          icon: const Icon(Icons.language),
          onPressed: (){
            if(AppTheme.currentLocale.value == ThemeConstants.englishLocale){
              AppTheme.currentLocale.value = ThemeConstants.arabicLocale;
            }else{
              AppTheme.currentLocale.value = ThemeConstants.englishLocale;
            }
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(S.of(context).qiblahFinder),
          const SizedBox(width:double.infinity),
        ],
      ),

    );
  }
}