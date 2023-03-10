import 'package:flutter/material.dart';
import 'package:water_app/screens/home_page.dart';
import 'package:water_app/screens/splash_screen.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to the Water intake tracking App',
      theme: ThemeData(
          // scaffoldBackgroundColor: const Color(0xFFF86624),
          brightness: Brightness.dark),
      home: const HomePage(title: 'Flutter'),
      // home: const SplashPage(),
    );
  }
}
