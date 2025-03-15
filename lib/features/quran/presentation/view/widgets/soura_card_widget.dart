import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/quran/data/model/sura_model.dart';
import 'package:quran_app/features/quran/presentation/view/widgets/sour_details_view.dart';

class SouraCardWidget extends StatelessWidget {
  const SouraCardWidget({super.key, required this.soura});

  final AyatSour soura;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.containerColor,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          child: Text(
            soura.index.toString(),
            style: Styles.textStyleBlod18.copyWith(
              color: AppColors.kBlackColor,
            ),
          ),
        ),
        title: Text(
          soura.name,
          style: Styles.textStyleBlod18.copyWith(color: AppColors.kWhiteColor),
        ),
        subtitle: Text(
          "عدد الآيات: ${soura.ayat}",
          style: Styles.textStyle14.copyWith(color: Colors.grey[300]),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: AppColors.kBlackColor),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SourDetailView(sour: soura),
            ),
          );
        },
      ),
    );
  }
}
