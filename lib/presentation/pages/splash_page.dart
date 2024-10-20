import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';
import '../../core/constants/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(
        context,
        Routes.onboarding.path,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppIcons.splashLogo),
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
