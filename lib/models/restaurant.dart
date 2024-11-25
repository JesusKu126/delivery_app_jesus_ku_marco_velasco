import 'package:collection/collection.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //Lists of food menu

  final List<Food> _menu = [
    //burgers
    Food(
        name: 'Hamburguesa sencilla',
        description:
            'Una hamburguesa hecha con carne de res, queso y verduras.',
        imagePath: 'lib/images/burgers/sencilla.png',
        price: 49.95,
        category: FoodCategory.hamburguesas,
        availableAddons: [
          Addon(name: 'Extra queso', price: 14.99),
          Addon(name: 'Salsa Ranch', price: 14.99),
          Addon(name: 'BBQ', price: 14.99),
        ]),
    Food(
        name: 'Hamburguesa de tocino',
        description:
            'Hamburguesa con crujiente tocino recién hecho, carne de res, queso y verduras.',
        imagePath: 'lib/images/burgers/bacon.jpeg',
        price: 64.99,
        category: FoodCategory.hamburguesas,
        availableAddons: [
          Addon(name: 'Extra queso', price: 14.99),
          Addon(name: 'Salsa Ranch', price: 14.99),
          Addon(name: 'BBQ', price: 14.99),
        ]),
    Food(
        name: 'Hamburguesa doble',
        description:
            'Una hamburguesa doble con dos jugosas carnes de res a la parrilla, acompañadas de queso derretido, lechuga, tomate, cebolla, pepinillos.',
        imagePath: 'lib/images/burgers/doble.png',
        price: 70.29,
        category: FoodCategory.hamburguesas,
        availableAddons: [
          Addon(name: 'Extra queso', price: 14.99),
          Addon(name: 'Salsa Ranch', price: 14.99),
          Addon(name: 'BBQ', price: 14.99),
        ]),
    Food(
        name: 'Hamburguesa BBQ',
        description:
            'Una hamburguesa BBQ con una jugosa carne de res a la parrilla cubierta con salsa barbacoa, acompañada de queso cheddar,con cebolla caramelizada y vegetales como lechuga y tomate.',
        imagePath: 'lib/images/burgers/bbq.jpeg',
        price: 85.69,
        category: FoodCategory.hamburguesas,
        availableAddons: [
          Addon(name: 'Extra queso', price: 14.99),
          Addon(name: 'Salsa Ranch', price: 14.99),
          Addon(name: 'BBQ', price: 14.99),
        ]),
    Food(
        name: 'Hamburguesa de pollo',
        description:
            'Una hhamburguesa de pollo crujiente o a la parrilla, acompañada de lechuga fresca, tomate, cebolla y salsa chipotle.',
        imagePath: 'lib/images/burgers/pollo.png',
        price: 86.99,
        category: FoodCategory.hamburguesas,
        availableAddons: [
          Addon(name: 'Extra queso', price: 14.99),
          Addon(name: 'Salsa Ranch', price: 14.99),
          Addon(name: 'BBQ', price: 14.99),
        ]),

    //salads

    Food(
      name: 'Ensalada Cesar',
      description:
          'La ensalada Cesar es una mezcla fresca de lechuga romana crujiente, aderezada con una salsa cremosa a base de ajo y queso parmesano y se le agrega pollo a la parrilla.',
      imagePath: 'lib/images/salads/pollo.png',
      price: 69.49,
      category: FoodCategory.ensaladas,
      availableAddons: [
        Addon(name: 'Pollo a la plancha', price: 19.99),
        Addon(name: 'Pan con Ajo', price: 15.49),
        Addon(name: 'Salsa Mil islas', price: 14.99),
      ],
    ),
    Food(
      name: 'Ensalada de hortalizas',
      description:
          'La ensalada de hortalizas tiene vegetales como lechuga, tomate, zanahoria rallada, pepino, rábanos y cebolla. Se puede aderezar con aceite de oliva.',
      imagePath: 'lib/images/salads/hortalizas.jpeg',
      price: 69.29,
      category: FoodCategory.ensaladas,
      availableAddons: [
        Addon(name: 'Pollo a la plancha', price: 19.99),
        Addon(name: 'Pan con Ajo', price: 15.49),
        Addon(name: 'Salsa Mil islas', price: 14.99),
      ],
    ),
    Food(
      name: 'Ensalada simple',
      description:
          'La ensalada simple tiene lechuga y tomate. Se puede aderezar con aceite de oliva',
      imagePath: 'lib/images/salads/lechuga.jpeg',
      price: 69.99,
      category: FoodCategory.ensaladas,
      availableAddons: [
        Addon(name: 'Pollo a la plancha', price: 19.99),
        Addon(name: 'Pan con Ajo', price: 15.49),
        Addon(name: 'Salsa Mil islas', price: 14.99),
      ],
    ),
    Food(
      name: 'Ensalada de frutas',
      description:
          'La ensalada de frutas es una mezcla refrescante de frutas frescas como manzana, plátano, naranja, piña, melón, fresa y uvas.',
      imagePath: 'lib/images/salads/frutas.png',
      price: 62.49,
      category: FoodCategory.ensaladas,
      availableAddons: [
        Addon(name: 'Pollo a la plancha', price: 19.99),
        Addon(name: 'Pan con Ajo', price: 15.49),
        Addon(name: 'Salsa Mil islas', price: 14.99),
      ],
    ),
    Food(
      name: 'Ensalada con pasta',
      description:
          'La ensalada con pasta combina pasta penne cocida con tomate, pepino, zanahoria y pimientos, junto con queso y pollo.',
      imagePath: 'lib/images/salads/ensalada_pasta_.jpg',
      price: 62.99,
      category: FoodCategory.ensaladas,
      availableAddons: [
        Addon(name: 'Pollo a la plancha', price: 19.99),
        Addon(name: 'Pan con Ajo', price: 15.49),
        Addon(name: 'Salsa Mil islas', price: 14.99),
      ],
    ),

    //sides
    Food(
      name: 'Papas fritas',
      description: 'Papas fritas crujientes y doradas a la perfección',
      imagePath: 'lib/images/sides/fritas.png',
      price: 52.99,
      category: FoodCategory.complementos,
      availableAddons: [
        Addon(name: 'Queso derretido', price: 14.99),
        Addon(name: 'Tocino  trozeado', price: 14.99),
      ],
    ),

    Food(
      name: 'Aros de cebolla',
      description:
          'Aros de cebolla crujientes empanizados y fritos hasta que estén dorados.',
      imagePath: 'lib/images/sides/aros.png',
      price: 53.49,
      category: FoodCategory.complementos,
      availableAddons: [
        Addon(name: 'Salsa Ranch', price: 14.99),
        Addon(name: 'BBQ', price: 14.99),
      ],
    ),

    Food(
      name: 'Papas gajo',
      description:
          'Las papas gajo son papas cortadas en forma de cuñas gruesas, sazonadas con especias como paprika, ajo en polvo y pimienta. Se cocinan al horno o fritas hasta quedar doradas y crujientes por fuera, pero suaves por dentro.',
      imagePath: 'lib/images/sides/gajo.png',
      price: 53.99,
      category: FoodCategory.complementos,
      availableAddons: [
        Addon(name: 'Queso derretido', price: 14.99),
        Addon(name: 'Tocino Trozeado', price: 14.99),
      ],
    ),

    Food(
      name: 'Charritos',
      description:
          'Un platón de charritos con jamón y queso picado, acompañado con jalapeño, media crema y salsa botanera.',
      imagePath: 'lib/images/sides/charritos.jpeg',
      price: 51.99,
      category: FoodCategory.complementos,
      availableAddons: [
        Addon(name: 'Jamón extra', price: 15.55),
        Addon(name: 'Queso extra', price: 15.49),
      ],
    ),

    Food(
      name: 'Jalapeño poppers',
      description:
          'Chiles jalapeños rellenos de queso crema o cheddar, cubiertos con pan rallado o masa, y fritos hasta quedar dorados y crujientes.',
      imagePath: 'lib/images/sides/poppers.jpeg',
      price: 52.49,
      category: FoodCategory.complementos,
      availableAddons: [
        Addon(name: 'Salsa Ranch', price: 14.99),
        Addon(name: 'BBQ', price: 14.99),
      ],
    ),

    //desserts
    Food(
      name: 'Cheesecake',
      description:
          'Una rica y cremosa tarta de queso con corteza de galleta marias',
      imagePath: 'lib/images/desserts/cheesecake.jpeg',
      price: 54.99,
      category: FoodCategory.postres,
      availableAddons: [
        Addon(name: 'Jalea de fresa', price: 15.99),
        Addon(name: 'Cajeta', price: 15.99),
        Addon(name: 'Hershey', price: 15.99),
      ],
    ),

    Food(
        name: 'Brownies',
        description:
            'Disfruta de un delicioso brownie, suave y esponjoso por dentro, con un rico sabor a chocolate.',
        imagePath: 'lib/images/desserts/Brownies.png',
        price: 55.99,
        category: FoodCategory.postres,
        availableAddons: [
          Addon(name: 'Helado de Vainilla', price: 15.99),
          Addon(name: 'Caramelo derretido', price: 15.99),
        ]),

    Food(
        name: 'Churros',
        description:
            'Deliciosos churros recién hechos, crujientes por fuera y suaves por dentro, espolvoreados con azúcar y canela.',
        imagePath: 'lib/images/desserts/churros.jpeg',
        price: 56.99,
        category: FoodCategory.postres,
        availableAddons: [
          Addon(name: 'Cajeta extra', price: 15.55),
          Addon(name: 'Lechera', price: 15.49),
        ]),

    Food(
        name: 'Raspado de mango',
        description:
            'Refrescante raspado de mango natural, cubierto con trozos de fruta fresca y un toque de chile en polvo o limón, según prefieras.',
        imagePath: 'lib/images/desserts/malteada.jpeg',
        price: 52.49,
        category: FoodCategory.postres,
        availableAddons: [
          Addon(name: 'Chamoy extra', price: 15.55),
          Addon(name: 'Miguelito extra', price: 15.55),
        ]),

    Food(
        name: 'Helado de oreo',
        description:
            'Delicioso helado cremoso con trozos de galleta Oreo, ofreciendo una combinación perfecta de chocolate y vainilla.',
        imagePath: 'lib/images/desserts/mcfury.jpeg',
        price: 52.99,
        category: FoodCategory.postres,
        availableAddons: [
          Addon(name: 'Oreo extra', price: 14.99),
          Addon(name: 'Chispas de chocolate', price: 14.99),
        ]),

    //drinks

    Food(
      name: 'Horchata',
      description:
          'Bebida refrescante y dulce, hecha a base de arroz, canela y un toque de vainilla.',
      imagePath: 'lib/images/drinks/horchata.jpeg',
      price: 31.99,
      category: FoodCategory.bebidas,
      availableAddons: [
        Addon(name: 'Popote extra', price: 5.55),
      ],
    ),
    Food(
      name: 'Jamaica',
      description:
          'Refrescante bebida hecha a base de flor de jamaica, con un sabor ligeramente ácido y dulce. Ideal para hidratarte en cualquier momento del día.',
      imagePath: 'lib/images/drinks/jamaica.jpg',
      price: 32.99,
      category: FoodCategory.bebidas,
      availableAddons: [
        Addon(name: 'Popote extra', price: 5.55),
      ],
    ),
    Food(
      name: 'Naranjada',
      description:
          'Bebida refrescante hecha con jugo de naranja natural, endulzada al gusto y servida bien fría.',
      imagePath: 'lib/images/drinks/naranjada.png',
      price: 32.99,
      category: FoodCategory.bebidas,
      availableAddons: [
        Addon(name: 'Popote extra', price: 5.55),
      ],
    ),
    Food(
      name: 'Té helado',
      description:
          'Bebida refrescante a base de té, servida bien fría y endulzada al gusto.',
      imagePath: 'lib/images/drinks/te.png',
      price: 31.49,
      category: FoodCategory.bebidas,
      availableAddons: [
        Addon(name: 'Popote extra', price: 5.55),
      ],
    ),
    Food(
      name: 'Coca-cola',
      description:
          'Refresca tu día con una Coca-Cola bien fría, la clásica bebida que no puede faltar en la mesa.',
      imagePath: 'lib/images/drinks/coca_cola.jpeg',
      price: 20.00,
      category: FoodCategory.bebidas,
      availableAddons: [
        Addon(name: 'Popote extra', price: 5.55),
      ],
    ),
  ];

  final List<CartItem> _cart = [];

  String _deliveryAddress = "Rc_39 Khuramabad";

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal;
    }
    return total;
  }

  // get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    /*
    StringBuffer class Dart mein mutable strings ko efficiently concatenate karne ke liye use hoti hai. 
    Yeh especially useful hai jab aapko ek string ko dynamically build karna ho, 
    jaise ke ek receipt ya report generate karte waqt.
    */

    receipt.writeln("Here's your receipt");
    /*
    receipt.writeln("Here's your receipt");: writeln method ek line ko string buffer mein 
    add karta hai aur automatically ek newline character (\n) bhi insert karta hai. Is line mein,
    "Here's your receipt" string buffer mein add kiya jata hai aur newline character bhi append hota hai.
    */
    receipt.writeln();

    //format the date to include up to second only
    //convert date to string here
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    /*
    DateFormat() class Dart ke intl package mein define ki gayi hai. intl package, 
    Internationalization (i18n) aur Localization (l10n) ke liye use hota hai.
    Yeh package date, time, numbers, aur messages ko locale-specific format mein handle
    karne ki sahulat provide karta hai.
    */
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons : ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Enviando a: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money

  String _formatPrice(double price) {
    //fixed price upto 2 decimal places
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")

        /*Example of map():
    Yeh function ek collection ke har element ko ek function se apply karta hai aur
    ek naya collection return karta hai. Naye collection mein har element original 
    collection ke corresponding element ke function se apply hone ke baad ka result hota hai.

      List<String> names = ["Alice", "Bob", "Charlie"];
      List<String> upperCaseNames = names.map((name) => name.toUpperCase());
      print(upperCaseNames); // Output: ["ALICE", "BOB", "CHARLIE"]
    */
        .join(", ");
  }
}
