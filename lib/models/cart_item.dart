import 'package:resto_app/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get TotalPrice {
    double addonsPrice = selectedAddons.fold(
      0,
      (sum, addon) => sum + addon.price,
    );
    return (food.price + addonsPrice) * quantity;
  }
}
