import 'package:flutter/material.dart';
import 'package:weather_home/scr/core/styles/colors/colors.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton(
      {super.key, required this.icon, required this.onPressed});
  static const iconSize = 35.0;
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: iconSize,
        color: AppColors.main,
      ),
    );
  }
}
