import 'package:beauty_store_app/data.dart';
import 'package:beauty_store_app/widget/CategoryItem.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFC9184),
        title: Text('Second Screen'),
      ),
      body: Column(
        children: [
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
          // Add more widgets or content as needed
        ],
      ),
    );
  }
}
