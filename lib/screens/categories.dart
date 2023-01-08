import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  static const String namedRoute = "/categories";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20
        ),
        padding: const EdgeInsets.all(15),
        children:
          DUMMY_CATEGORIES.map((category) => CategoryCard(category)).toList()
        ,
      ),
    );
  }
}
