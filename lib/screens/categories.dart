import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  static const String namedRoute = "/categories";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
        centerTitle: true,
      ),
    );
  }
}
