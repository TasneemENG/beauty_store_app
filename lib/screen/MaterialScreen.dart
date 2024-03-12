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
        title: Text(
          categoryName,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFC9184),
      ),

      body: filteredMaterials.isEmpty
          ? Center(
        child: Text('No materials available for this category.'),
      )
          : Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: ListView.builder(
            itemCount: (filteredMaterials.length / 2).ceil(),
            itemBuilder: (context, index) {
              var material1 = filteredMaterials[index * 2];
              var material2 = (index * 2 + 1 < filteredMaterials.length)
                  ? filteredMaterials[index * 2 + 1]
                  : null;

              return Row(
                children: [
                  Expanded(
                    child: MaterialItem(
                      id: material1.id,
                      title: material1.title,
                      imageUrl: material1.imageUrl,
                      salary: material1.salary,
                      description: material1.description,
                      categoryNumber: material1.categoryNumber,
                    ),
                  ),
                  if (material2 != null) ...[
                    SizedBox(width: 10),
                    Expanded(
                      child: MaterialItem(
                        id: material2.id,
                        title: material2.title,
                        imageUrl: material2.imageUrl,
                        salary: material2.salary,
                        description: material2.description,
                        categoryNumber: material2.categoryNumber,
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
