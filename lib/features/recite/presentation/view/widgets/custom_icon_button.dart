import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';


class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, required this.icon, this.onPressed,
  });
  final IconData icon;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(backgroundColor: AppColors.greyLight),
        icon:  Icon(
          icon,
          size: 36,
        ));
  }
}
