import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kWhiteColor,
          title: Text(
            "اقْرَأْ",
            style: Styles.textStyleBold26.copyWith(
              color: AppColors.containerColor,
            ),
          ),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 60, 16, 30),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
