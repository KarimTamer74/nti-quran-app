import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart' show AppStrings;
import 'package:quran_app/core/utils/styles.dart';


class ChangeBackgroundSection extends StatefulWidget {
  const ChangeBackgroundSection(
      {super.key,
      required this.backgroundColor,
      this.isShowImages = false,
      required this.backgroundImagePath});

  final bool? isShowImages;
  final void Function(Color) backgroundColor;
  final void Function(String)? backgroundImagePath;

  @override
  State<ChangeBackgroundSection> createState() =>
      _ChangeBackgroundSectionState();
}

final List<Color> backgroundColors = [
  AppColors.cornsilk,
  AppColors.beige,
  AppColors.gold,
  AppColors.lightSalmon,
  AppColors.lightBlue,
  AppColors.lightGreen,
  AppColors.pink,
  AppColors.khaki,
  AppColors.lavender,
  AppColors.thistle,
];
final List<String> backgroundImages = [
  AppAssets.whatsAppProfile1,
  AppAssets.whatsAppProfile2,
  AppAssets.whatsAppProfile3,
  AppAssets.whatsAppProfile4,
  AppAssets.whatsAppProfile5,
  AppAssets.whatsAppProfile6,
  AppAssets.whatsAppProfile7,
  AppAssets.whatsAppProfile8,
  AppAssets.whatsAppProfile9,
  AppAssets.whatsAppProfile10,
];

class _ChangeBackgroundSectionState extends State<ChangeBackgroundSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.isShowImages == true
              ? AppStrings.changeBackground
              : AppStrings.changeBackgroundColor,
          style: Styles.textStyleBold26
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: backgroundColors.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  widget.isShowImages == true
                      ? widget.backgroundImagePath!(backgroundImages[index])
                      : widget.backgroundColor(backgroundColors[index]);
                },
                child: Container(
                  height: 8,
                  width: 60,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyMedium),
                      borderRadius: BorderRadius.circular(80),
                      color: widget.isShowImages == true
                          ? null
                          : backgroundColors[index],
                      image: widget.isShowImages == true
                          ? const DecorationImage(
                              image: AssetImage(AppAssets.sobhanaAllah3),
                              fit: BoxFit.cover,
                            )
                          : null),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
