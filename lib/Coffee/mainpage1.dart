import 'dart:ui';

import 'package:coffee_shop/Coffee/2nd%20page.dart';
import 'package:coffee_shop/Coffee/3rd%20page.dart';
import 'package:coffee_shop/Coffee/bottomnavbar.dart';
import 'package:flutter/material.dart';

class mainpage1 extends StatefulWidget {
  const mainpage1({super.key});

  @override
  State<mainpage1> createState() => _mainpage1State();
}

class _mainpage1State extends State<mainpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // image: DecorationImage(image:
              // AssetImage("assets/images/c1.jpg",))
            ),
            child: Image.asset(
              "assets/images/c23.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 340,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20), // Adjust spacing as needed
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          "Coffee so good,\n your taste buds \n will love it",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(textAlign: TextAlign.center,
                            "The best grain the finest ,\nthe most powerful flavour",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 655.0,left: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(300, 50),backgroundColor: Color(0xFFBC9F7D)),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bottom(),));

            }, child: Text("Get Started",style: TextStyle(fontSize: 20, color:  Colors.white
            ),)),
          )
        ],
      ),
    );
  }
}
