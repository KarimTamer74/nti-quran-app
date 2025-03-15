import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/recite/presentation/view/widgets/change_background_section.dart';
import 'package:quran_app/features/recite/presentation/view/widgets/custom_drawer.dart';
import 'package:quran_app/features/recite/presentation/view/widgets/tasbeeh_box.dart';

class ReciteView extends StatefulWidget {
  const ReciteView({super.key});

  @override
  State<ReciteView> createState() => _ReciteViewState();
}

Color? backgroundColor;
// String backgroundImage = AppAssets.sobhanaAllah1;
String title = AppStrings.sobhanaAllah;
String subTitle = AppStrings.sobhanaAllahSubtitle;
bool isResetCounter = false;

class _ReciteViewState extends State<ReciteView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: backgroundColor,
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(AppStrings.appBarTitle, style: Styles.textStyle24),
      ),
      backgroundColor: backgroundColor,
      endDrawer: CustomDrawer(
        onTapTitle: (tasbeehTitle, tasbeehSubTitle) {
          setState(() {
            title = tasbeehTitle;
            subTitle = tasbeehSubTitle;
            isResetCounter = true;
          });
        },
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(decoration: BoxDecoration(color: backgroundColor)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Styles.textStyleBold26),
                  const SizedBox(height: 20),
                  Text(subTitle, style: Styles.textStyle20),
                  const SizedBox(height: 60),
                  TasbeehBox(
                    boxColor: backgroundColor,
                    isResetCounter: isResetCounter,
                  ),
                  const SizedBox(height: 50),
                  ChangeBackgroundSection(
                    backgroundImagePath: null,
                    backgroundColor: (color) {
                      setState(() {
                        backgroundColor = color;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
