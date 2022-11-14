import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:resto_cafe/src/cubit/restauarant_cubit/restaurant_repository.dart';
import 'package:resto_cafe/src/models/Restaurant.dart';
import 'package:resto_cafe/src/models/api_response_model.dart';

part 'restaurant_state.dart';

class RestaurantCubit extends Cubit<RestaurantState> {
  RestaurantCubit() : super(RestaurantInitial());
  RestaurantRepository _repository = RestaurantRepository();

  getRestaurantsData() async {
    emit(RestaurantLoading());
    try {
      Restaurant response = await _repository.getRestaurantsData();
      print(response);
      if (response.restaurantId != null) {
        // List<Restaurant> restaurant = response.
        //     .map<Restaurant>((e) => Restaurant.fromJson(e))
        //     .toList();
        emit(RestaurantLoadSuccess(response));
      } else {
        emit(RestaurantLoadError("errorMessage"));
      }
    } catch (ex) {
      emit(RestaurantLoadError("error loading data"));
    }
  }
}
