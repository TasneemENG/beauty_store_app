import 'package:beauty_store_app/data.dart';
import 'package:beauty_store_app/widget/MaterialItem.dart';
import 'package:flutter/material.dart';

class MaterialScreen extends StatelessWidget {
  final String categoryName;
  final String id;

  const MaterialScreen({
    Key? key,
    required this.categoryName,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredMaterials =
    materials.where((material) => material.categoryNumber == id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
        backgroundColor: Color(0xFFFC9184),
      ),
      body: filteredMaterials.isEmpty
          ? Center(
        child: Text('No materials available for this category.'),
      )
          : Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView.builder(
                    itemCount: filteredMaterials.length,
                    itemBuilder: (context, index) {
            return Container(
              color: Color(0xFFFC9184),
              child: MaterialItem(
                id: filteredMaterials[index].id,
                title: filteredMaterials[index].title,
                imageUrl: filteredMaterials[index].imageUrl,
                salary: filteredMaterials[index].salary,
                description: filteredMaterials[index].description,
                categoryNumber: filteredMaterials[index].categoryNumber,
              ),
            );
                    },
                  ),
          ),
    );
  }
}
