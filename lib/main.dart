import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AfroFoodApp());
}

class AfroFoodApp extends StatelessWidget {
  const AfroFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AfroFood Express',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFEA580C),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFEA580C),
          primary: const Color(0xFFEA580C),
          secondary: const Color(0xFFDC2626),
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const HomeScreen(),
    );
  }
}