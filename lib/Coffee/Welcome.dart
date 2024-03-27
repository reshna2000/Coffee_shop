import 'package:coffee_shop/Coffee/1stpage.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 500,
                    width: 360,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                      ),
                    ),
                    child: Image.asset("assets/images/gc3.jpg", fit: BoxFit.cover),

                  ),
                ),
                Positioned(
                    top: 400,
                    left: 0,
                    child: Container(
                      height: 400,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Color(0xFF8ACEB0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(70), // Curves downwards
                          topLeft: Radius.circular(70), // Curves downwards
                        ),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),

                            Text("Welcome to Coffee Shop",style: TextStyle(color: Color(0xFF035023,),fontWeight: FontWeight.bold,fontSize: 26)),
                            SizedBox(height: 20,),
                            Text(textAlign:TextAlign.center, "Get wide range of speciality coffee,\n tea and beverages.",style: TextStyle(color: Color(0xFF035023,),fontSize: 20)),
                            SizedBox(height: 30,),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom( elevation:30 ,backgroundColor:Color(0xFF035023),minimumSize: Size(100, 50)),
                                onPressed:  () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));

                                }, child: Text("Sign In",style: TextStyle(color: Colors.white),))
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
    );
  }
}
