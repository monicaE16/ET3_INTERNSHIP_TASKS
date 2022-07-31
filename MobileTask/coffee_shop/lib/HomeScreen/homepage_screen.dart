import 'package:coffee_shop/HomeScreen/Widgets/product_grid.dart';
import 'package:coffee_shop/HomeScreen/Widgets/search_bar.dart';
import 'package:coffee_shop/HomeScreen/Widgets/top_bar.dart';
import 'package:coffee_shop/HomeScreen/Widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String title1 = "Coffee first.";
  final String title2 = "Schemes later.";
  final TextStyle titleStyle =
      const TextStyle(fontSize: 27, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopBar(title1: title1, title2: title2, titleStyle: titleStyle),
              const SearchBar(),
              const ProductsGrid(),
              const BottomBar()
            ],
          ),
        )));
  }
}
