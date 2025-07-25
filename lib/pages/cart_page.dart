import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto_app/components/my_button.dart';
import 'package:resto_app/components/my_cart_tile.dart';
import 'package:resto_app/models/restaurant.dart';
import 'package:resto_app/pages/payment_page.dart';

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
            actions: [
              //clear all cart
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            "Are you sure you want to clear the cart?",
                          ),
                          actions: [
                            //cancel button
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel"),
                            ),
                            //yes button
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: const Text("Cancel"),
                            ),
                          ],
                        ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
            elevation: 0,
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // the cart items
                    userCart.isEmpty
                        ? const Expanded(
                          child: Center(child: Text("The cart is Empty")),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              //get individual cartItem
                              final cartItem = userCart[index];
                              //return cart tile UI
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              //button to pay
              MyButton(
                text: "Go to the check out",
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    ),
              ),

              const SizedBox(height: 35),
            ],
          ),
        );
      },
    );
  }
}
