import 'package:flutter/material.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/routes.dart';
import '../widgets/app_action_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

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
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      Routes.login.path,
                    );
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
