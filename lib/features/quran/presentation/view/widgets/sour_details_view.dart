import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/quran/data/model/sura_model.dart';

class SourDetailView extends StatelessWidget {
  const SourDetailView({super.key, required this.sour});
  final AyatSour sour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sour.name,
          style: Styles.textStyleBold26.copyWith(color: AppColors.kWhiteColor),
        ),
        centerTitle: true,
        backgroundColor: AppColors.containerColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(22, 20, 22, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                sour.displayqoran,
                textAlign: TextAlign.justify,
                style: Styles.textStyle20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
