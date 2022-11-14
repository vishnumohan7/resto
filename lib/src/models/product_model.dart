class Products {
  String dishId;
  String dishName;
  int dishPrice;
  String dishImage;
  String dishCurrency;
  int dishCalories;
  String dishDescription;
  bool dishAvailability;
  int dishType;

  Products(
      {required this.dishId,
      required this.dishName,
      required this.dishPrice,
      required this.dishImage,
      required this.dishCurrency,
      required this.dishCalories,
      required this.dishDescription,
      required this.dishAvailability,
      required this.dishType});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        dishId: json["dishId"],
        dishName: json["dishName"],
        dishPrice: json["dishPrice"],
        dishImage: json["dishImage"],
        dishCurrency: json["dishCurrency"],
        dishCalories: json["dishCalories"],
        dishDescription: json["dishDescription"],
        dishAvailability: json["dishAvailability"],
        dishType: json["dishType"]);
  }
}
