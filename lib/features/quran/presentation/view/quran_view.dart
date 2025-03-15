import 'package:flutter/material.dart';
import 'package:quran_app/features/quran/presentation/view/widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('القران الكريم'), centerTitle: true),
      body: QuranViewBody(),
    );
  }
}
