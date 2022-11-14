import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_cafe/src/cubit/restauarant_cubit/restaurant_cubit.dart';
import 'package:resto_cafe/src/models/Restaurant.dart';

class RestaurantFragment extends StatefulWidget {
  const RestaurantFragment({Key? key}) : super(key: key);

  @override
  State<RestaurantFragment> createState() => _RestaurantFragmentState();
}

class _RestaurantFragmentState extends State<RestaurantFragment> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantCubit()..getRestaurantsData(),
      child: Scaffold(
        body: BlocBuilder<RestaurantCubit, RestaurantState>(
          builder: (context, state) {
            print(state);
            if (state is RestaurantLoading) {
              return CircularProgressIndicator();
            } else if (state is RestaurantLoadSuccess) {
              return _buildRestaurantListUI(state.restaurants);
            } else if (state is RestaurantLoadError) {
              return Text(state.errorMessage);
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  _buildRestaurantListUI(Restaurant restaurants) {
    return ListView.builder(
        itemCount: restaurants.tableMenuList?.length,
        itemBuilder: (context, index) {
          var item = restaurants.tableMenuList?[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage((item?.menuCategoryImage).toString()),
              radius: 45,
            ),
            title: Text((item?.menuCategory).toString()),
            subtitle: Text((item?.menuCategoryId).toString()),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_right),
            ),
          );
        });
  }
}
