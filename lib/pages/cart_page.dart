import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/model/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    void removeFromCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false)
          .removeItemFromCart(coffee);
    }

    void payNow(){
      //nothing
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) =>
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                Text(
                "Your Cart",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.userCart[index];
                      return CoffeeTile(
                          coffee: eachCoffee,
                          onPressed: () => removeFromCart(eachCoffee),
                          icon: Icon(Icons.delete));
                    }),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                    padding: EdgeInsets.all(25),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.brown,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text("Pay Now", style: TextStyle(color: Colors.white))
                    ),
                            ),
              )
            ],
          ),
    )));
  }
}
