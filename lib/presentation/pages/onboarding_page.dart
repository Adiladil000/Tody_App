import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tody_app/core/constants/app_keys.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/routes.dart';
import '../widgets/app_action_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Image.asset(AppImages.onboarding)),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text('Welcome to\nUno To Do',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(height: 16),
                Text('Start using the best To Do app',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 80),
                AppActionButton(
                  title: 'Get Started',
                  onPressed: () async {
                    final preferences = await SharedPreferences.getInstance();
                    preferences.setBool(AppKeys.isAppOpened, true);
                    if (mounted) {
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.login.path,
                      );
                    }
                  },
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
