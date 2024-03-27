import 'package:coffee_shop/Coffee/signin.dart';
import 'package:coffee_shop/Coffee/signup.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 400,
                      width: 360,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                        ),
                      ),
                      child: Image.asset("assets/images/gc1.jpg",fit: BoxFit.cover,
                      ),

                    ),
                  ),
                  Positioned(
                      top: 350,
                      left: 0,
                      child: Container(
                        height: 500,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Color(0xFF8ACEB0),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70), // Curves downwards
                            topLeft: Radius.circular(70), // Curves downwards
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              TabBar(indicatorColor:Color(0xFF035023),dividerColor: Color(0xFF035023),
                                  tabs: [Text("Sign In", style: TextStyle(color: Color(0xFF035023),fontSize: 20,fontWeight: FontWeight.bold)),
                                    Text("Sign Up", style: TextStyle(color: Color(0xFF035023),fontWeight:  FontWeight.bold,fontSize: 20))
                                  ]),
                              Expanded(
                                child: TabBarView(children: [
                                  logiN(),
                                  signup()
                                ]),
                              )
                            ],
                          ),
                        ),

                      )

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
