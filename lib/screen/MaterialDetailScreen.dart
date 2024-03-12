import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MaterialDetailScreen extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String salary;
  final String description;
  final String categoryNumber;

  MaterialDetailScreen({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.salary,
    required this.description,
    required this.categoryNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xFFFC9184),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFC9184),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: _buildCardSide(
                  child: Image.asset(
                    imageUrl,
                    height: 400.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                back: _buildCardSide(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 8.0),
                      Text(
                        'Description:',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 35.0),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Salary: \$${salary.toString()}',
                        style: TextStyle(fontSize: 35.0, color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your "Add to Cart" logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSide({required Widget child}) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
