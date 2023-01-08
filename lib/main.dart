import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories.dart';

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
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        )
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
