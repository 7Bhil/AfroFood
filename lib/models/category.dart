class Category {
  final String name;
  final String icon;
  final int count;

  Category({
    required this.name,
    required this.icon,
    required this.count,
  });

  static List<Category> getCategories() {
    return [
      Category(name: 'Populaires', icon: '🔥', count: 45),
      Category(name: 'Traditionnels', icon: '🍲', count: 38),
      Category(name: 'Spécialités', icon: '⭐', count: 28),
      Category(name: 'Boissons', icon: '🥤', count: 22),
      Category(name: 'Desserts', icon: '🍰', count: 15),
      Category(name: 'Menus', icon: '🍽️', count: 12),
    ];
  }
}