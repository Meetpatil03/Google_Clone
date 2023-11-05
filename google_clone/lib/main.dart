import 'package:flutter/material.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_screen_layout.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      home: ResponsiveScreenLayout(
        mobileScreenLayout: MobileSceenLayout(),
        desktopScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
