import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(category.title),
      ),
    );
  }

}
