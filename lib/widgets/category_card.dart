import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/screens/category_meals_screen.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoryMealsScreen.routeName,
            arguments: category);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: category.color, borderRadius: BorderRadius.circular(10)),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
