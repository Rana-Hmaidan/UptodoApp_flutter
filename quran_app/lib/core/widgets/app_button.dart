import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key, 
    required this.title, 
    required this.onPressed
    });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.lightBlueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        ),
    );
  }
}