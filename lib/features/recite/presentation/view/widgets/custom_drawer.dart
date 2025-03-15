import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart' show AppStrings;
import 'package:quran_app/core/utils/styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, this.onTapTitle});
  final void Function(String, String)? onTapTitle;
  static const List<String> drawerItems = [
    AppStrings.sobhanaAllah,
    AppStrings.alhamd,
    AppStrings.allahAkbar,
    AppStrings.laEllahElAllah,
    AppStrings.hoqallah,
    AppStrings.salatAlanNabi,
    AppStrings.astaghfirullah,
    AppStrings.laEllahElAllahWahdaho,
    AppStrings.subhanAllahWabihamdih,
    AppStrings.subhanAllahWalhamdulillah,
  ];
  static const List<String> itemsSubtitle = [
    AppStrings.sobhanaAllahSubtitle,
    AppStrings.alhamdSubtitle,
    AppStrings.allahAkbarSubtitle,
    AppStrings.laEllahElAllahSubtitle,
    AppStrings.hoqallahSubtitle,
    AppStrings.salatAlanNabiSubtitle,
    AppStrings.astaghfirullahSubtitle,
    AppStrings.laEllahElAllahWahdahoSubtitle,
    AppStrings.subhanAllahWabihamdihSubtitle,
    AppStrings.subhanAllahWalhamdulillahSubtitle,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: AppColors.greyLight,
      child: Column(
        children: [
          const SizedBox(height: 60),
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8,
                  ),
                  child: InkWell(
                    onTap: () {
                      onTapTitle!(drawerItems[index], itemsSubtitle[index]);
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.circle_outlined),
                      title: Text(
                        drawerItems[index],
                        style: Styles.textStyle22,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
