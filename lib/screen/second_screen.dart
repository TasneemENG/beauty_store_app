import 'package:beauty_store_app/data.dart';
import 'package:beauty_store_app/widget/CategoryItem.dart';
import 'package:beauty_store_app/widget/MaterialItem.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

// ...

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFC9184),
        title: Text(
          'Second Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CarouselSlider(
                items: categories.map((category) {
                  return CategoryItem(
                    categoryName: category.name,
                    categoryImage: category.image,
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: materials.length ~/ 2, // Adjusted item count
                itemBuilder: (context, index) {
                  var material1 = materials[index * 2];
                  var material2 = materials[index * 2 + 1];
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
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
