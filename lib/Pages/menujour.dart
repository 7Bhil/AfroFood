import 'package:flutter/material.dart';



class menujour extends StatelessWidget {
  const menujour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu du Jour'),
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Aujourd\'hui au menu :',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 20),

            // Cartes du menu avec images locales
            _buildMenuCard('Spagheti', 'assets/images/spagheti.jpg'),
            _buildMenuCard('Frit au Poulet', 'assets/images/frit_au_poulet.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(String title, String imagePath) {
    return Container(
      height: 180,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(2, 2)),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath), // <-- Utilisation de l'image locale
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(blurRadius: 5, color: Colors.black45)],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
