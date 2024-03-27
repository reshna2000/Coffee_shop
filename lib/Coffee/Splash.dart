import 'dart:async';

import 'package:coffee_shop/Coffee/mainpage1.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => mainpage1(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Image.asset("assets/images/logo.png",scale: 2),
        ),
      ),
    );
  }
}
