import 'package:b_28_sultonov_saidmalik_exam_6/screen/silent_mood_pages.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: SilentMoodApp(),
    );
  }
}
