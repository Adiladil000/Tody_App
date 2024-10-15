import 'package:flutter/material.dart';
import 'package:tody_app/core/theme/app_typography.dart';

import 'presentation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tody App',
      theme: ThemeData(fontFamily: AppTypography.fontFamily),
      home: const SplashPage(),
    );
  }
}
