import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Cake',
        iconPath: 'assets/icons/cake.svg',
        boxColor: Colors.brown));

    categories.add(CategoryModel(
        name: 'biscuit',
        iconPath: 'assets/icons/biscuit.svg',
        boxColor: Colors.yellow.shade300));

    categories.add(CategoryModel(
        name: 'paratha',
        iconPath: 'assets/icons/biscuit.svg',
        boxColor: Colors.amber.shade700));

    categories.add(CategoryModel(
        name: 'Sandwich',
        iconPath: 'assets/icons/sandwich.svg',
        boxColor: Colors.lime.shade400));
    return categories;
  }
}
