import 'package:flutter/material.dart';
import 'package:quran_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 30),
          child: SplashViewBody(),
        ),
      ),
    );
  }
}
