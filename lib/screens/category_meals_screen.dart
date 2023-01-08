import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';

import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = 'category-meals';

  final String categoryId;

  const CategoryMealsScreen({Key? key, required this.categoryId})
      : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late final List<Meal> meals;

  @override
  void initState() {
    super.initState();
    meals = DUMMY_MEALS
        .where((element) => element.id == widget.categoryId)
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal App'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          Meal currentMeal = meals[index];

          return Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(currentMeal.imageUrl),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    color: Colors.black45,
                    child: Text(currentMeal.title),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(),
              )
            ],
          );
        },
        itemCount: meals.length,
      ),
    );
  }
}
