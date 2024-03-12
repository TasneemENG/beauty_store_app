import 'package:flutter/material.dart';

class MaterialItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String salary;
  final String description;
  final String categoryNumber;

  MaterialItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.salary,
    required this.description,
    required this.categoryNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          // Handle material item tap
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imageUrl,
                height: 120.0, // Adjust the height to fit the grid
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.0, // Adjust the font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Salary: \$${salary.toString()}',
                    style: TextStyle(
                      fontSize: 12.0, // Adjust the font size
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 10.0, // Adjust the font size
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.pink),
                  onPressed: () {
                    // Add your "Add to Cart" logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
