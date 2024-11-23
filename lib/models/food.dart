// food items

class Food{
  final String name; // Cheese Burger
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese.burger.png
  final double price; //4.99
  final FoodCategory category; // burger
  final List<Addon> availableAddons; // [extra cheese , sauce , extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,

  });

}

//Food Catagory
enum  FoodCategory{
  hamburguesas,
  ensaladas,
  complementos,
  postres,
  bebidas,

}

// Food Addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price
  });

}