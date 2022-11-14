import 'package:resto_cafe/src/helpers/api_helper.dart';
import 'package:resto_cafe/src/models/Restaurant.dart';
import 'package:resto_cafe/src/models/api_response_model.dart';
import 'package:resto_cafe/src/web_service/api_routes.dart';

class RestaurantRepository {
  Future<Restaurant> getRestaurantsData() async {
    var response = await ApiHelper().makeGetRequest(ApiRoutes.restaurantroute);
    print(response);
    return Restaurant.fromJson(response.data);
  }
}
