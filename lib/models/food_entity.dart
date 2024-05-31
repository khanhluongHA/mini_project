class FoodEntity {
  final String? foodName;
  final String? chess;
  final String? foodImage;

  FoodEntity({
    this.foodName,
    this.chess,
    this.foodImage,
  });
}

List<FoodEntity> listFood = [
  FoodEntity(
    foodName: "Salad",
    chess: "16.728 recipes",
    foodImage: "assets/img2.png",
  ),
  FoodEntity(
    foodName: "Salad",
    chess: "16.728 recipes",
    foodImage: "assets/itemsalad.jpg",
  ),
  FoodEntity(
    foodName: "Salad",
    chess: "16.728 recipes",
    foodImage: "assets/itemsalad2.jpg",
  ),
];
