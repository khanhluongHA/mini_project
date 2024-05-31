class ListFood {
  final String? foodNames;
  final String? personCook;
  final String? foodImages;

  ListFood({
    required this.foodNames,
    required this.personCook,
    required this.foodImages,
  });
}

List<ListFood> dishLists = [
  ListFood(
    foodNames: "Vegetable and Fruit Green Salad",
    personCook: "Willard Purnell",
    foodImages: "assets/salad3.jpg",
  ),
  ListFood(
    foodNames: "Vegetable and Fruit Salad width Balsa",
    personCook: "jane Copper",
    foodImages: "assets/salad4.jpg",
  ),
  ListFood(
    foodNames: "Fresh Seasoned Vegetable Salad",
    personCook: "Phyllis Godley",
    foodImages: "assets/salad5.jpg",
  ),
  ListFood(
    foodNames: "Vegetable Lettuce Salad width Simple",
    personCook: "Clinton Mcclure",
    foodImages: "assets/salad6.jpg",
  ),
  ListFood(
    foodNames: "Vegetable and Salad with Potato and meat",
    personCook: "json dali",
    foodImages: "assets/salad7.webp",
  ),
  ListFood(
    foodNames: "Vegetable and fruit ",
    personCook: "been and bob",
    foodImages: "assets/salad8.jpg",
  ),
];
