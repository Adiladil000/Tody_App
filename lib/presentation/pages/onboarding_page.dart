import 'package:flutter/material.dart';
import 'package:tody_app/core/constants/app_icons.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Image.asset(AppIcons.splashLogo)),
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style
                          ?.textStyle
                          ?.resolve(WidgetState.values.toSet()),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
