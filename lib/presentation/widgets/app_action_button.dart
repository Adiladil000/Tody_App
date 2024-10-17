import 'package:flutter/material.dart';
import 'package:tody_app/core/theme/app_colors.dart';
import 'package:tody_app/core/theme/app_typography.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).brightness == Brightness.dark
        ? DarkAppColors.primary
        : AppColors.primary;

    return Material(
      borderRadius: BorderRadius.circular(20),
      color: color,
      elevation: 4,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Center(
            child: Text(
              title,
              style: AppTypography.labelLarge.w500
                  .copyWith(color: AppColors.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
