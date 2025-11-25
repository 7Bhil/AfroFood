import 'package:flutter/material.dart';
import 'global.dart';

class Plats extends StatelessWidget {
  const Plats({super.key});

  // Liste des plats
  final List<Map<String, dynamic>> plats = const [
    {
      "nom": "Poulet Yassa",
      "prix": 3500,
      "description": "Poulet mariné aux oignons et citron, servi avec du riz.",
      "image": "assets/images/poulet.jpg"
    },
    {
      "nom": "Riz Jollof",
      "prix": 3000,
      "description": "Riz épicé cuisiné avec tomates, poivrons et épices.",
      "image": "assets/images/riz_jolof.jpg"
    },
    {
      "nom": "Fufu avec Sauce Gombo",
      "prix": 4000,
      "description": "Pâte de manioc avec sauce gombo et viande.",
      "image": "assets/images/foufou.jpg"
    },

    {
      "nom": "Mafé",
      "prix": 3800,
      "description": "Ragoût à la sauce arachide avec viande ou poisson.",
      "image": "assets/images/mafe.jpg"
    },
    {
      "nom": "Egusi Soup",
      "prix": 4000,
      "description": "Soupe aux graines de melon, légumes et viande.",
      "image": "assets/images/egusi.jpg"
    },

    {
      "nom": "Brochettes de Poulet",
      "prix": 2500,
      "description": "Petites brochettes de poulet épicé, grillées.",
      "image": "assets/images/brochette.jpg"
    },
    {
      "nom": "Akara",
      "prix": 1500,
      "description": "Beignets de haricot frits, parfaits en snack.",
      "image": "assets/images/ata.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos Plats"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Deux plats par ligne
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: plats.length,
        itemBuilder: (context, index) {
          final plat = plats[index];
          return _buildPlatCard(
            context,
            plat['nom'],
            plat['prix'],
            plat['description'],
            plat['image'],
          );
        },
      ),
    );
  }

  Widget _buildPlatCard(
      BuildContext context,
      String nom,
      int prix,
      String description,
      String imagePath,
      ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(2, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image en haut
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              imagePath,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          // Infos et bouton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nom,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    description,
                    style: const TextStyle(fontSize: 13, color: Colors.black87),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),

                  Text(
                    "$prix FCFA",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Bouton Ajouter au panier
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        panier.add({
                          "nom": nom,
                          "prix": prix,
                          "quantite": 1,
                          "image": imagePath,
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("$nom ajouté au panier !"),
                            backgroundColor: Colors.deepOrange,
                          ),
                        );
                      },
                      icon: const Icon(Icons.add_shopping_cart, size: 18),
                      label: const Text("Ajouter"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
