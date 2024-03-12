import 'package:beauty_store_app/data.dart';
import 'package:beauty_store_app/widget/CategoryItem.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFC9184),
        title: Text('Second Screen'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryItem(
            categoryName: category.name,
            categoryImage: category.image,
          );
        },
      ),
    );
  }
}