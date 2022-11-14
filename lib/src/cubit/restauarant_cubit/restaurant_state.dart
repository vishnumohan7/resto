part of 'restaurant_cubit.dart';

abstract class RestaurantState extends Equatable {
  const RestaurantState();
}

class RestaurantInitial extends RestaurantState {
  @override
  List<Object> get props => [];
}

class RestaurantLoading extends RestaurantState {
  @override
  List<Object> get props => [];
}

class RestaurantLoadSuccess extends RestaurantState {
   Restaurant restaurants;

  RestaurantLoadSuccess(this.restaurants);

  @override
  List<Object> get props => [restaurants];
}

class RestaurantLoadError extends RestaurantState {
  final String errorMessage;

  RestaurantLoadError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
