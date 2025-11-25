class Product {
  final String id;
  final String name;
  final String price;
  final String image;
  final String restaurant;
  final double rating;
  final String stock;
  final int reviews;
  final String category;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.restaurant,
    required this.rating,
    required this.stock,
    required this.reviews,
    required this.category,
    required this.description,
  });

  static List<Product> getSampleProducts() {
    return [
      Product(
        id: '1',
        name: 'Attiéké Poisson Braisé',
        price: '2 500',
        image: 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&h=500&fit=crop',
        restaurant: 'Chez Maman Parakou',
        rating: 4.9,
        stock: 'Disponible',
        reviews: 156,
        category: 'Populaire',
        description: 'Délicieux attiéké servi avec du poisson frais braisé et sa sauce tomate pimentée',
      ),
      Product(
        id: '2',
        name: 'Foufou sauce graine',
        price: '1 800',
        image: 'https://images.unsplash.com/photo-1626074353765-517a0ae2524c?w=500&h=500&fit=crop',
        restaurant: 'Restaurant Le Bénin',
        rating: 4.8,
        stock: 'Disponible',
        reviews: 203,
        category: 'Traditionnel',
        description: 'Foufou d\'igname pilé accompagné de sa savoureuse sauce graine',
      ),
      Product(
        id: '3',
        name: 'Wassa Wassa complet',
        price: '2 000',
        image: 'https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=500&h=500&fit=crop',
        restaurant: 'La Terrasse Africaine',
        rating: 4.7,
        stock: 'Disponible',
        reviews: 124,
        category: 'Spécialité',
        description: 'Couscous de maïs traditionnel avec viande et légumes',
      ),
      // Ajoutez plus de produits ici...
    ];
  }
}