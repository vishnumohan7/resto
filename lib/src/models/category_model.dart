class CategoryDishes {
  String dishId;
  String dishName;
  double dishPrice;
  String dishImage;
  String dishCurrency;
  int dishCalories;
  String dishDescription;
  bool dishAvailability;
  int dishType;
  String nexturl;

  CategoryDishes({
    required this.dishId,
    required this.dishName,
    required this.dishPrice,
    required this.dishImage,
    required this.dishCurrency,
    required this.dishCalories,
    required this.dishDescription,
    required this.dishAvailability,
    required this.dishType,
    required this.nexturl,
  });

  factory CategoryDishes.fromJson(Map<String, dynamic> json) {
    return CategoryDishes(
        dishId: json["dishId"],
        dishName: json["dishName"],
        dishPrice: json["dishPrice"],
        dishImage: json["dishImage"],
        dishCurrency: json["dishCurrency"],
        dishCalories: json["dishCalories"],
        dishDescription: json["dishDescription"],
        dishAvailability: json["dishAvailability"],
        dishType: json["dishType"],
        nexturl: json["nexturl"]);
  }
}
