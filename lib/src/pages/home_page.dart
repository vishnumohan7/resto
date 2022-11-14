import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:resto_cafe/src/fragments/cart_fragment.dart';
import 'package:resto_cafe/src/fragments/category_fragment.dart';
import 'package:resto_cafe/src/fragments/home_fragment.dart';
import 'package:resto_cafe/src/fragments/restaurant_fragment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> fragments = [HomeFragment(),RestaurantFragment(),CategoryFragment(),CartFragment()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Swiggy"),
        centerTitle: true,
      ),
      body: fragments[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor:Colors.orangeAccent,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant),label: "Restauarants"),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Cart"),
        ],
      ),
    );
  }
}
