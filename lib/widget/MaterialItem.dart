import 'package:beauty_store_app/screen/MaterialDetailScreen.dart';
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

  void _addToCart() {
    // Add your "Add to Cart" logic here
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15.0),
      onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MaterialDetailScreen(
            id: id,
            title: title,
            imageUrl: imageUrl,
            salary: salary,
            description: description,
            categoryNumber: categoryNumber,
          ),
        ),
      );
      },
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageSection(),
            _buildTextSection(),
            _buildActionSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      child: Image.asset(
        imageUrl,
        height: 120.0,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTextSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart, color: Colors.pink),
            onPressed: _addToCart,
          ),
          Text(
            'Salary: \$${salary.toString()}',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}