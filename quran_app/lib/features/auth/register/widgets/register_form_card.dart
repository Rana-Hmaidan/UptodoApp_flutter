import 'package:flutter/material.dart';
import 'package:quran_app/generated/l10n.dart';

class RegisterFormCard extends StatelessWidget {
  const RegisterFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              S.of(context).signUp,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).username,
                labelText: S.of(context).username,
              ),
            ),
            const SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                hintText: S.of(context).email,
                labelText: S.of(context).email,
              ),
            ),
            const SizedBox(height: 16,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: S.of(context).password,
                labelText: S.of(context).password,
              ),
            ),
            const SizedBox(height: 16,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: S.of(context).confirmPassword,
                labelText: S.of(context).confirmPassword,
              ),
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}