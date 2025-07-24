import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto_app/models/restaurant.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cartItem
                    final cartItem = userCart[index];
                    //return cart tile UI
                    return ListTile(
                      title: Text(userCart[index].food.name),
                      subtitle: Text('Quantity: ${userCart[index].quantity}'),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
