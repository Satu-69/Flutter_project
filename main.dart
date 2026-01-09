import 'package:flutter/material.dart';
import 'package:secure_app_final/screens/login_screen.dart';
import 'package:secure_app_final/utils/app_theme.dart';

void main() {
  runApp(const SecureCommApp());
}

class SecureCommApp extends StatelessWidget {
  const SecureCommApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Communication Platform',
      theme: AppTheme.mainTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}