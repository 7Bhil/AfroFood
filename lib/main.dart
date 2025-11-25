import 'package:afrofood/Pages/menujour.dart';
import 'package:afrofood/Pages/panier.dart';
import 'package:afrofood/Pages/plat.dart';
import 'package:flutter/material.dart';
import 'pages/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AfroFood',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Accueil(),
        '/menu':(context)=> menujour(),
        '/plat':(context)=>Plats(),
        '/panier':(context)=>PanierPage(),

        // '/login': (context) => const Login(), // si tu veux ajouter une page login
      },
    );
  }
}
