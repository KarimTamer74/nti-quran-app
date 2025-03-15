import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_constants.dart';
import 'package:quran_app/features/home/presentation/view/home_view.dart';
import 'package:quran_app/features/quran/presentation/view/quran_view.dart';
import 'package:quran_app/features/recite/presentation/view/recite_view.dart';
import 'package:quran_app/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppConstants.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
        
        case AppConstants.quranView:
        return MaterialPageRoute(
          builder: (context) => const QuranView(),
        );
        
        case AppConstants.reciteView:
        return MaterialPageRoute(
          builder: (context) => const ReciteView(),
        );

      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
