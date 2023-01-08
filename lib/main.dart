import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/category_meals_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/categories',
      routes: {
        "/categories": (context) => CategoriesScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == CategoryMealsScreen.routeName) {
          final arg = settings.arguments as String;

          return MaterialPageRoute(builder: (context) {
            return CategoryMealsScreen(categoryId: arg);
          });
        }
      },
      theme: ThemeData(
        textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        canvasColor: Colors.amber[50],
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meal App"),
          centerTitle: true,
        ),
      ),
    );
  }
}
