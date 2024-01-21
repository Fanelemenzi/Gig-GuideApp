import 'package:flutter/material.dart';
import 'package:gig_guide/Pages/Home_page.dart';
import 'package:gig_guide/Pages/intro_page.dart';
import 'package:gig_guide/Pages/my_events.dart';
import 'package:gig_guide/theme/light_mode.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/Home_page':(context) => const HomePage(),
        '/my_events':(context) => const MyEvents() 
      },
    );
  }
}
