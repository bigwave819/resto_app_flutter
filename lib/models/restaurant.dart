import "food.dart";

class Restaurant {
  // list of food on menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheese Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger1.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Double Beef Burger",
      description:
          "Two grilled beef patties, double cheese, and our special sauce.",
      imagePath: "lib/images/burgers/burger2.png",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Fried Egg", price: 1.50),
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 0.75),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "Grilled chicken breast with mayo, lettuce, and tomato.",
      imagePath: "lib/images/burgers/burger3.png",
      price: 3.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 0.99),
        Addon(name: "Spicy Sauce", price: 0.49),
        Addon(name: "Pickles", price: 0.50),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "Plant-based patty with fresh greens, tomato, and vegan mayo.",
      imagePath: "lib/images/burgers/burger4.png",
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 1.25),
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Vegan Bacon", price: 1.50),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Beef patty with BBQ sauce, bacon, onion rings, and cheddar.",
      imagePath: "lib/images/burgers/burger5.png",
      price: 4.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.79),
        Addon(name: "Coleslaw", price: 0.99),
        Addon(name: "Grilled Pineapple", price: 1.25),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Romaine lettuce with parmesan, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/salad1.png",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
        Addon(name: "Boiled Egg", price: 1.00),
        Addon(name: "Parmesan", price: 0.75),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Feta cheese, olives, cucumber, tomato, and red onions.",
      imagePath: "lib/images/salads/salad2.png",
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Olive Oil", price: 0.50),
        Addon(name: "Chickpeas", price: 0.99),
        Addon(name: "Lemon Dressing", price: 0.60),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Fresh mixed greens, tomatoes, cucumbers, and carrots.",
      imagePath: "lib/images/salads/salad3.png",
      price: 2.50,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Ranch Dressing", price: 0.75),
        Addon(name: "Sunflower Seeds", price: 0.60),
        Addon(name: "Croutons", price: 0.50),
      ],
    ),
    Food(
      name: "Avocado Tuna Salad",
      description: "Tuna chunks with avocado slices, tomato, and lettuce.",
      imagePath: "lib/images/salads/salad4.png",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Tuna", price: 1.99),
        Addon(name: "Chili Flakes", price: 0.25),
        Addon(name: "Olives", price: 0.75),
      ],
    ),
    Food(
      name: "Fruit Salad",
      description: "Mix of seasonal fruits with honey drizzle.",
      imagePath: "lib/images/salads/salad5.png",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Yogurt", price: 1.50),
        Addon(name: "Granola", price: 0.99),
        Addon(name: "Chia Seeds", price: 0.70),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Golden crispy fries with salt.",
      imagePath: "lib/images/sides/side1.png",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Chili Powder", price: 0.25),
        Addon(name: "Ketchup", price: 0.20),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Deep fried onion rings with dipping sauce.",
      imagePath: "lib/images/sides/side2.png",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Dip", price: 0.50),
        Addon(name: "Ranch Dip", price: 0.50),
        Addon(name: "Spicy Ketchup", price: 0.40),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Crispy cheese-filled sticks served with marinara.",
      imagePath: "lib/images/sides/side3.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara", price: 0.50),
        Addon(name: "Garlic Dip", price: 0.75),
        Addon(name: "Parmesan Sprinkle", price: 0.60),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Baked sweet potato fries lightly seasoned.",
      imagePath: "lib/images/sides/side4.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cinnamon Sugar", price: 0.40),
        Addon(name: "Maple Syrup Dip", price: 0.99),
        Addon(name: "Chili Lime", price: 0.60),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Creamy cabbage and carrot salad.",
      imagePath: "lib/images/sides/side5.png",
      price: 1.25,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Pineapple Bits", price: 0.50),
        Addon(name: "Raisins", price: 0.40),
        Addon(name: "Extra Cream", price: 0.30),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Cake",
      description: "Rich and moist chocolate cake slice.",
      imagePath: "lib/images/desserts/dessert1.png",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Strawberry Syrup", price: 0.75),
        Addon(name: "Nuts", price: 0.90),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with chocolate syrup and cherry.",
      imagePath: "lib/images/desserts/dessert2.png",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.25),
        Addon(name: "Oreo Crumbs", price: 0.50),
        Addon(name: "Caramel Sauce", price: 0.75),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Classic apple pie with cinnamon flavor.",
      imagePath: "lib/images/desserts/dessert3.png",
      price: 2.75,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.25),
        Addon(name: "Whipped Cream", price: 0.60),
        Addon(name: "Caramel Drizzle", price: 0.80),
      ],
    ),
    Food(
      name: "Brownie",
      description: "Fudgy chocolate brownie.",
      imagePath: "lib/images/desserts/dessert4.png",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Walnuts", price: 0.70),
        Addon(name: "Ice Cream", price: 1.20),
        Addon(name: "Fudge Sauce", price: 0.60),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/dessert5.png",
      price: 3.25,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Berry Compote", price: 1.00),
        Addon(name: "Chocolate Drizzle", price: 0.75),
        Addon(name: "Whipped Topping", price: 0.50),
      ],
    ),

    // Drinks
    Food(
      name: "Coca-Cola",
      description: "Refreshing carbonated soft drink.",
      imagePath: "lib/images/drinks/drink1.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.10),
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Reusable Cup", price: 1.00),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice.",
      imagePath: "lib/images/drinks/drink2.png",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Pulp", price: 0.30),
        Addon(name: "Mint", price: 0.20),
        Addon(name: "Ice Cubes", price: 0.15),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled tea with lemon flavor.",
      imagePath: "lib/images/drinks/drink3.png",
      price: 1.25,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Honey", price: 0.40),
        Addon(name: "Mint Leaves", price: 0.30),
        Addon(name: "Lime Slice", price: 0.25),
      ],
    ),
    Food(
      name: "Milkshake",
      description: "Vanilla milkshake topped with whipped cream.",
      imagePath: "lib/images/drinks/drink4.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate Syrup", price: 0.50),
        Addon(name: "Cherries", price: 0.40),
        Addon(name: "Sprinkles", price: 0.30),
      ],
    ),
    Food(
      name: "Water Bottle",
      description: "Chilled bottled water.",
      imagePath: "lib/images/drinks/drink5.png",
      price: 0.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Reusable Bottle", price: 1.00),
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Ice Cubes", price: 0.10),
      ],
    ),
  ];

  /*

    G E T T E R S

*/

List<Food> get menu => _menu;

/*

    O P E R A T I O N S 

*/

//add to cart

//remove from cart

//get total price of the cart

//get total number of the items in the cart

//clear cart

/*

    H E L P E R S 

*/

//generate recipient

//format the double value into money

//format the list of addons into a string Summary
}