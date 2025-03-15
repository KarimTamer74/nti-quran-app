import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/home/presentation/view/widgets/home_gird_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            // height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.containerColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,

                    child: Text(
                      " اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ ",
                      style: Styles.textStyleBold32.copyWith(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/splash_image.png',
                      scale: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 36),
          Text(
            "الأقسام",
            style: Styles.textStyleBold20.copyWith(
              color: AppColors.containerColor,
            ),
          ),
          SizedBox(height: 22),
          HomeGirdView(),
        ],
      ),
    );
  }
}
