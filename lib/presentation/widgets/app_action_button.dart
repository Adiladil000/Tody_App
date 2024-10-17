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

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 50,
        // maxWidth: 150,
        minHeight: 20,
        maxHeight: 40,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: color,
        elevation: 4,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
