import 'package:coffee_shop/Coffee/Splash.dart';
import 'package:coffee_shop/Coffee/mainpage1.dart';
import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class logiN extends StatefulWidget {
  const logiN({super.key});

  @override
  State<logiN> createState() => _logiNState();
}

class _logiNState extends State<logiN> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ACEB0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Color(0xFF035023)),
                hintText: "Email Address:",
                hintStyle: TextStyle(
                    color: Color(0xFF035023),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF035023)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF035023)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Color(0xFF035023)),
                hintText: "Password:",
                hintStyle: TextStyle(
                    color: Color(0xFF035023),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF035023)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF035023)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.white,
                  backgroundColor: Color(0xFF035023),
                  minimumSize: Size(100, 50)),
              onPressed: () {
                if (_emailController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => splash()),
                  );
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Enter username and password")));
                }
              },
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color(0xFF035023),
                ),
              ),
              Text(
                "  OR  ",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Divider(
                  color: Color(0xFF035023),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook, color: Color(0xFF035023)),
              SizedBox(width: 20),
              Text(
                "G",
                style: TextStyle(
                    color: Color(0xFF035023),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )
            ],
          )
        ],
      ),
    );
  }
}

