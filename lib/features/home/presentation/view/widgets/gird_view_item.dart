import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/home/data/category_model.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: categoryModel.color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,

              child: Text(
                categoryModel.title,
                style: Styles.textStyleBold22.copyWith(
                  color: AppColors.kWhiteColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(categoryModel.image, height: 60),
            ),
          ],
        ),
      ),
    );
  }
}
