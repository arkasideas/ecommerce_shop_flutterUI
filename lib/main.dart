import 'package:ecommerce_shop_ui/screens/login_screen.dart';
import 'package:ecommerce_shop_ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'screens/navigation_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFDB3022)),
      title: 'Ecommerce Shopping',
      // home: SplashScreen(),
      home: LoginScreen(),
      // home: OnboardingScreen(),
      // home: NavigationScreen(),
    );
  }
}
