import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_constants.dart';
import 'package:quran_app/features/home/data/category_model.dart';
import 'package:quran_app/features/home/presentation/view/widgets/gird_view_item.dart';

class HomeGirdView extends StatelessWidget {
  const HomeGirdView({super.key, this.onItemTapped});

  static List<CategoryModel> categories = [
    CategoryModel(
      id: 1,
      title: "القران",
      image: 'assets/images/book_image.png',
      color: AppColors.primaryColor,
    ),
    CategoryModel(
      id: 2,
      title: "السبحة الالكترونية",
      image: 'assets/images/recite_image.png',
      color: AppColors.reciteCategoryColor,
    ),
    CategoryModel(
      id: 3,
      title: "الإستماع",
      image: 'assets/images/listening_image.png',
      color: AppColors.listeningCategoryColor,
    ),
    CategoryModel(
      id: 4,
      title: "الإختبار",
      image: 'assets/images/test_category_image.png',
      color: AppColors.testCategoryColor,
    ),
  ];
  final void Function()? onItemTapped;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
      ),
      itemBuilder:
          (context, index) => InkWell(
            onTap: () {
              if (categories[index].id == 1) {
                Navigator.pushNamed(context, AppConstants.quranView);
              } else if (categories[index].id == 2) {
                Navigator.pushNamed(context, AppConstants.reciteView);
              }
            },
            child: GridViewItem(categoryModel: categories[index]),
          ),
    );
  }
}
