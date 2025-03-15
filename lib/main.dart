import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quran_app/core/utils/app_router.dart';
import 'package:quran_app/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      locale: Locale('ar'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('ar')],
      onGenerateRoute: AppRouter().onGenerateRoute,
      home: SplashView(),
    );
  }
}
