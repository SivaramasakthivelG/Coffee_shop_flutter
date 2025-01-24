import 'package:coffee_shop/model/coffee_shop.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CoffeeShop(),
      builder: (context,child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
