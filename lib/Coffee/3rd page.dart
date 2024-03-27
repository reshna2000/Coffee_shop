// import 'package:coffee/Coffee/Login1.dart';
// import 'package:coffee/Coffee/bottomnavbar.dart';
// import 'package:coffee/Coffee/components/Trending.dart';
// import 'package:coffee/Coffee/signin.dart';
// import 'package:coffee/Coffee/logsign.dart';
import 'package:coffee_shop/Coffee/2nd%20page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'bottomnavbar.dart';


class opening extends StatefulWidget {
  const opening({Key? key});

  @override
  State<opening> createState() => _openingState();
}

class _openingState extends State<opening> {
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
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                        ),
                      ),
                      child:Image.asset("assets/images/coffe4.jpg",height:40,fit: BoxFit.cover,)
                  ),
                ),Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                      height:50,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => bottom(),));

                          }, icon: Icon(Icons.arrow_back_sharp,color: Color(0xFFC9DFB3),),
                          ),
                          Icon( Icons.favorite,color: Color(0xFFC9DFB3),),
                        ],
                      )
                  ),
                ),
                Positioned(
                  top: 320,
                  left: 0,
                  child: Container(
                      height:50,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Cappuccino",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 20)),
                              Text("With low fat milk",style: TextStyle(color: Colors.brown,fontSize: 20)),

                            ],
                          ),
                          Container(
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.brown,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                Text("1.3k",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Positioned(
                    top: 370,
                    left: 0,
                    child: Container(
                      height: 500,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Color(0xFFDBF3D9),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)// Curves downwards
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                 color:  Color(0xFFC9DFB3),
                                borderRadius:BorderRadius.circular(70)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(onPressed: () {

                                  }, child: Text("Coffee", style:  TextStyle(fontWeight:  FontWeight.bold,color: Colors.black,fontSize: 15),)),
                                  // Text("|"),
                                  VerticalDivider(
                                  ),
                                  TextButton(onPressed: () {

                                  }, child: Text("Chocolate",style:  TextStyle(fontWeight:  FontWeight.bold,color: Colors.black,fontSize: 15),)),
                                  VerticalDivider(),
                                  TextButton(onPressed: () {

                                  }, child: Text("Medium roasted",style:  TextStyle(fontWeight:  FontWeight.bold,color: Colors.black,fontSize: 15),)),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 250, top: 10),
                            child: Text("Coffee Size",style:  TextStyle(fontWeight:  FontWeight.bold,color: Colors.black,fontSize: 15),),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
                             child:
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   ElevatedButton(
                                       onPressed: () {


                                   },style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF035023)), child: Text("small",style: TextStyle(color: Colors.white),)),
                                   ElevatedButton(onPressed: () {

                                   }, child: Text("Medium",style: TextStyle(color: Colors.black),)),
                                   ElevatedButton(onPressed: () {

                                   }, child: Text("Large",style: TextStyle(color: Colors.black),)),
                                 ],
                               ),
                           ),
                          Padding(
                            padding: const EdgeInsets.only(right: 290.0,top: 5),
                            child: Text("About", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Cappuccino is an espresso-based coffee drink that's made with equal "
                                "parts espresso, steamed milk, and frothed milk. The milk isn't mixed in, "
                                "which gives the espresso a stronger flavor. The cappuccino is rich, "
                                "not acidic, and has a mildly sweet flavor from the milk.",textAlign: TextAlign.center,maxLines: 4),
                          ) ,
                          ElevatedButton(
                              onPressed: () {

                              },style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF035023),minimumSize: Size(280, 50)),
                              child: Text("Order Now",style: TextStyle(color: Colors.white),)),



                        ],
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
