import 'package:flutter/material.dart';
import 'package:tody_app/core/theme/app_colors.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
              displaySmall: AppTypography.displaySmall.w400
                  .copyWith(color: AppColors.onSurface),
              titleMedium: AppTypography.titleMedium.w500
                  .copyWith(color: AppColors.primaryVariant)),
          scaffoldBackgroundColor: AppColors.surface,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                textStyle: AppTypography.labelLarge.w500.copyWith(
                  color: AppColors.onPrimary,
                )),
          )),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
              displaySmall: AppTypography.displaySmall.w400
                  .copyWith(color: DarkAppColors.onSurface),
              titleMedium: AppTypography.titleMedium.w500
                  .copyWith(color: DarkAppColors.primaryVariant)),
          scaffoldBackgroundColor: DarkAppColors.surface,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: DarkAppColors.primary,
                textStyle: AppTypography.labelLarge.w500.copyWith(
                  color: AppColors.onPrimary,
                )),
          )),
      home: const SplashPage(),
    );
  }
}
