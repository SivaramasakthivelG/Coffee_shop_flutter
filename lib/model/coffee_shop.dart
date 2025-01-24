import 'package:coffee_shop/model/coffee.dart';
import 'package:flutter/material.dart';

// final and const
class CoffeeShop extends ChangeNotifier{

  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
        name: "Coffee",
        price: "4.10",
        imagePath: "lib/images/coffee.png"),
    Coffee(
        name: "Latte",
        price: "5.10",
        imagePath: "lib/images/latte.png"),
    Coffee(
        name: "Espresso",
        price: "2.10",
        imagePath: "lib/images/espresso.png"),
    Coffee(
        name: "Iced-coffee",
        price: "8.10",
        imagePath: "lib/images/iced_tea.png")
  ];


  //user cart
  List<Coffee> _userCart = [];

  //get user cart
  List<Coffee> get coffeeShop => _shop;
  //get coffee list
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item to cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}