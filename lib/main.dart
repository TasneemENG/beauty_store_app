import 'package:beauty_store_app/screen/HomeScreen.dart';
import 'package:beauty_store_app/screen/second_screen.dart';
import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "secondScreen":(context)=>SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
