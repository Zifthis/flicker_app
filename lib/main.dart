import 'package:flicker_app/pages/main_page.dart';
import 'package:flicker_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    SplashPage(
      onInitiComplete: () => runApp(
        const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flicked',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext _context) => MainPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
