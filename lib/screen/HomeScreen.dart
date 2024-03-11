import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFFFC9184),
            child: Image.network(
             "https://i1.wp.com/sparkleisthenewblack.com/wp-content/uploads/2015/04/Molimakeup-Smile-e1429768217376.jpg?resize=600%2C600",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 460,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(60.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Everything is There For your Beauty Needs",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Indulge in a world of glamour and self-expression. Explore curated skincare, cosmetics, and haircare essentials designed just for you! ✨",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.grey[500],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "secondScreen");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFC9184),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the button's shape
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
