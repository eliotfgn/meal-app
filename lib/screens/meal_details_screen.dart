import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  late final Meal meal;

  static const String routeName = "/meal_details";

  MealDetailsScreen();

  @override
  Widget build(BuildContext context) {
    meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(meal.imageUrl),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black87,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            meal.title,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 19),
                          ),
                          const Icon(
                            Icons.favorite_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ingredients",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(253, 143, 10, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: meal.ingredients
                      .map((ingredient) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  ingredient,
                                  style: const TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Steps",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(253, 143, 10, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: meal.steps
                      .map((step) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.check_circle_rounded,
                                  size: 20,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.fade,
                                    step,
                                    style: const TextStyle(fontSize: 16),
                                    softWrap: true,
                                  ),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
