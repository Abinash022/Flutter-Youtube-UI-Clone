import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/homepage.dart';

import 'package:youtube_clone_ui/Theme/app_theme.dart';
import 'Screens/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube UI Clone',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const YoutubeBottomNavigaton(),
    );
  }
}
