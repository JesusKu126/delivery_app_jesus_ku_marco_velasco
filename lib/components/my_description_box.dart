import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //text style
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextSyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //delivery fee
              Text('\$19.99', style: myPrimaryTextStyle),
              Text('Envío gratis', style: mySecondaryTextSyle)
            ],
          ),
          Column(
            children: [
              //delivery time
              Text('15-30 min', style: myPrimaryTextStyle),
              Text('Tiempo de envío', style: mySecondaryTextSyle)
            ],
          )
        ],
      ),
    );
  }
}
