import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = 'category-meals';

  final Category category;

  const CategoryMealsScreen({Key? key, required this.category})
      : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late final List<Meal> meals;

  @override
  void initState() {
    setState(() {
      meals = DUMMY_MEALS
          .where((element) => element.categories.contains(widget.category.id))
          .toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          Meal currentMeal = meals[index];

          return MealItem(meal: currentMeal);
        },
        itemCount: meals.length,
      ),
    );
  }
}
