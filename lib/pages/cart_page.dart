import 'package:delivery_app_jesus_ku_marco_velasco/components/my_button.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/components/my_cart_tile.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/models/restaurant.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;

      //Scaffold UI
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Carrito'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                                '¿Estás seguro de vaciar el carrito?'),
                            actions: [
                              //cancel button

                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancelar')),

                              //yes
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text('Sí')),
                            ],
                          ));
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child:
                              Center(child: Text("El carrito está vacío...")))
                      : Expanded(
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //get individual cart item
                                final cartItem = userCart[index];

                                // return card tile UI
                                return ListTile(
                                  title: MyCartTile(
                                    cartItem: cartItem,
                                  ),
                                );
                              }),
                        )
                ],
              ),
            ),

            MyButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage()));
                },
                text: 'Proceder al pago'),

            const SizedBox(
              height: 25,
            ),
          ],
        ),
      );
    });
  }
}
