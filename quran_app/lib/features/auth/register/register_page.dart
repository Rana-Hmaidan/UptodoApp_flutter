import 'package:flutter/material.dart';
import 'package:quran_app/core/widgets/app_button.dart';
import 'package:quran_app/features/auth/register/widgets/register_form_card.dart';
import 'package:quran_app/generated/l10n.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                width: MediaQuery.sizeOf(context).width * 0.5 ,
              ),
              const SizedBox(height: 25),
              const RegisterFormCard(),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  title: S.of(context).signUp, 
                  onPressed: (){},
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(S.of(context).alreadyHavaAnAcoount,),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: Text(S.of(context).signIn),
                  ),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}