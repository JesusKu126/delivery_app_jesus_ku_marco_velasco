import 'package:delivery_app_jesus_ku_marco_velasco/components/my_receipt.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/databases/firestore.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  //get acces to db
  FirestoreServices db = FirestoreServices();

  @override
  void initState() {
    super.initState();

    //if we get to this page, submit order to firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottonNavBar(context),
      body: const SingleChildScrollView(
        child: Column(
          children: [MyReceipt()],
        ),
      ),
    );
  }

  //Custom Bottom Nav Bar - Message / call delivery driver
  Widget _buildBottonNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          //profile pic of the driver
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),

          const SizedBox(
            width: 10,
          ),

          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Marco Antonio Velasco Torres",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Conductor",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
