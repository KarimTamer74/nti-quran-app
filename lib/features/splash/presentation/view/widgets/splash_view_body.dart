import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_constants.dart';
import 'package:quran_app/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 341,
            height: 418,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.containerColor,
            ),
            child: Image.asset('assets/images/splash_image.png'),
          ),
        ),
        SizedBox(height: 26),
        Text(
          "اقْرَأْ",
          style: Styles.textStyleBold32.copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(height: 32),

        Text(
          "تعلم القرآن الكريم واذكر الله في كل مكان",
          softWrap: true,
          style: Styles.textStyle24,
        ),
        SizedBox(height: 32),

        CustomElevatedButton(
          textButton: "ابدأ",
          backgroundColor: AppColors.primaryColor,
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppConstants.homeView);
          },
        ),
      ],
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.textButton,
    required this.backgroundColor,
    this.onPressed,
  });
  final String textButton;
  final Color backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(171, 53),
        maximumSize: Size(200, 53),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textButton,
            style: Styles.textStyleBold26.copyWith(
              color: AppColors.kBlackColor,
            ),
          ),
          SizedBox(width: 8),

          Icon(Icons.arrow_forward, size: 32, color: AppColors.kBlackColor),
        ],
      ),
    );
  }
}
