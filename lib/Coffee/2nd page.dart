import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '3rd page.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBF3D9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Row(
                 children: [
                   CircleAvatar(
                      backgroundImage: AssetImage("assets/images/P.png"),
                   ),
                   SizedBox(
                     width: 70,
                   ),
                   Icon(Icons.location_on_outlined,color: Color(0xFF035023),),
                   Text("torento,Canada",style: TextStyle(fontWeight: FontWeight.bold)),
                   SizedBox(
                     width: 90,
                   ),
                   Icon(Icons.notification_add_outlined)
                 ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 208.0,top: 20),
              child: Text("Good Morning,Rohit",style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 10,right: 30),
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Search',

                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFDBF3D9)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 228, top: 20),
              child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(50),color: Color(0xFF035023)),
                    height: 40,
                    width: 100,
                    child: TextButton.icon(onPressed: () {
        
                    }, icon: Icon(Icons.coffee,color: Colors.white), label: Text("Coffee",style: TextStyle(color:Colors.white),)),
                  ),
                  Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color:  Color(0xFF035023))),
                    height: 40,
                    width: 100,
                    child: TextButton.icon(onPressed: () {
        
                    }, icon: Icon(Icons.coffee_maker_sharp,color: Colors.black), label: Text("Coffee",style: TextStyle(color:Colors.black),)),
                  ),
                  Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color:  Color(0xFF035023))),
                    height: 40,
                    width: 100,
                    child: TextButton.icon(onPressed: () {
        
                    }, icon: Icon(Icons.coffee_maker_sharp,color: Colors.black), label: Text("Coffee",style: TextStyle(color:Colors.black),)),
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10),
                         child:
                         Row(
                           children: [
                            Stack(
                              children: [
                                Container(
                                  width: 130,
                                height: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          mainAxisAlignment:  MainAxisAlignment.end,
                                          children: [
                                            Text(" Cappuccino",style: TextStyle(fontWeight: FontWeight.bold)),
                                            Text("5.3k")
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 0,left: 30),
                                          child: Container(
                                              height:25,
                                              width:25,
                                              decoration:  BoxDecoration(
                                                color:Color(0xFF035023),
                                               borderRadius:  BorderRadius.circular(9)),
                                              child: Icon(Icons.add,color:  Colors.white,)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                   onTap: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) => opening(),));
                                     },
                                  child: Container(
                                    width: 130,
                                    height: 100,
                                     decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                       image: DecorationImage(image: AssetImage("assets/images/coffe4.jpg"),fit: BoxFit.fitWidth)
                                     ),
                                                        ),
                                ),

                              ],
                            ),
                           ]
                         )
                       ),
                       SizedBox(
                         width: 20,
                       ),
                       Padding(
                           padding: const EdgeInsets.all(8.0),
                           child:
                           Row(
                               children: [
                                 Stack(
                                   children: [
                                     Container(
                                       width: 130,
                                       height: 180,
                                       decoration: BoxDecoration(
                                           color: Colors.grey.shade300,
                                           borderRadius: BorderRadius.circular(20)
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.only(bottom: 40),
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           children: [
                                             Column(
                                               mainAxisAlignment:  MainAxisAlignment.end,
                                               children: [
                                                 Text(" cold Coffee",style: TextStyle(fontWeight: FontWeight.bold)),
                                                 Text("1.3k")
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(bottom: 0,left: 30),
                                               child: Container(
                                                   height:25,
                                                   width:25,
                                                   decoration:  BoxDecoration(
                                                       color:Color(0xFF035023),
                                                       borderRadius:  BorderRadius.circular(9)),
                                                   child: Icon(Icons.add,color:  Colors.white,)),
                                             )
                                           ],
                                         ),
                                       ),
                                     ),
                                     Container(
                                       width: 130,
                                       height: 100,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                           image: DecorationImage(image: AssetImage("assets/images/c5.jpg"),fit: BoxFit.fitWidth)

                                       ),
                                     ),

                                   ],
                                 ),
                               ]
                           )
                       )
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(10),
                         child:
                         Row(
                           children: [
                            Stack(
                              children: [
                                Container(
                                  width: 130,
                                height: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          mainAxisAlignment:  MainAxisAlignment.end,
                                          children: [
                                            Text("  Espresso",style: TextStyle(fontWeight: FontWeight.bold)),
                                            Text("5.0k")
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 0,left: 40),
                                          child: Container(
                                              height:25,
                                              width:25,
                                              decoration:  BoxDecoration(
                                                color:Color(0xFF035023),
                                               borderRadius:  BorderRadius.circular(9)),
                                              child: Icon(Icons.add,color:  Colors.white,)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                   onTap: () {
                                     // Navigator.push(context, MaterialPageRoute(builder: (context) => opening(),));
                                     },
                                  child: Container(
                                    width: 130,
                                    height: 100,
                                     decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                       image: DecorationImage(image: AssetImage("assets/images/coffee2.jpg"),fit: BoxFit.fitWidth)
                                     ),
                                                        ),
                                ),

                              ],
                            ),
                           ]
                         )
                       ),
                       SizedBox(
                         width: 20,
                       ),
                       Padding(
                           padding: const EdgeInsets.all(8.0),
                           child:
                           Row(
                               children: [
                                 Stack(
                                   children: [
                                     Container(
                                       width: 130,
                                       height: 180,
                                       decoration: BoxDecoration(
                                           color: Colors.grey.shade300,
                                           borderRadius: BorderRadius.circular(20)
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.only(bottom: 40),
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.end,
                                           children: [
                                             Column(
                                               mainAxisAlignment:  MainAxisAlignment.end,
                                               children: [
                                                 Text("  Latte",style: TextStyle(fontWeight: FontWeight.bold)),
                                                 Text("  5.3k")
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(bottom: 0,left: 65),
                                               child: Container(
                                                   height:25,
                                                   width:25,
                                                   decoration:  BoxDecoration(
                                                       color:Color(0xFF035023),
                                                       borderRadius:  BorderRadius.circular(9)),
                                                   child: Icon(Icons.add,color:  Colors.white,)),
                                             )
                                           ],
                                         ),
                                       ),
                                     ),
                                     Container(
                                       width: 130,
                                       height: 100,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                           image: DecorationImage(image: AssetImage("assets/images/c3.jpg"),fit: BoxFit.fitWidth)

                                       ),
                                     ),

                                   ],
                                 ),
                               ]
                           )
                       )
                     ],
                   ),
                 ],
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(right: 228, top: 20,bottom: 10),
              child: Text("Special Offers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Column(
              children: [
                Stack(
                   children: [
                     Container(
                      height: 150,
                     width: 300,
                       decoration:  BoxDecoration(
                         color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 138.0,top: 30),
                         child: Column(
                         children: [
                           ElevatedButton(
                               style: ElevatedButton.styleFrom( backgroundColor:Color(0xFF885A3A),minimumSize: Size(50, 50)),
                               onPressed: () {

                           }, child: Text("See Offer", style: TextStyle(color: Colors.white),))
                         ],
                                          ),
                       ),
                     ),
                     InkWell(

                       child: Container(
                         height: 150,
                         width: 150,
                           decoration:  BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(image: AssetImage("assets/images/c4.jpg"),fit: BoxFit.cover)
                           )

                       ),
                     )
                    ],
                ),
                SizedBox(height: 20,),
                Stack(
                   children: [
                     Container(
                      height: 150,
                     width: 300,
                       decoration:  BoxDecoration(
                          color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 138.0,top: 30),
                         child: Column(
                         children: [
                           ElevatedButton(
                               style: ElevatedButton.styleFrom( backgroundColor:Color(0xFF885A3A),minimumSize: Size(50, 50)),
                               onPressed: () {

                           }, child: Text("See Offer", style: TextStyle(color: Colors.white),))
                         ],
                                          ),
                       ),
                     ),
                     InkWell(

                       child: Container(
                         height: 150,
                         width: 150,
                           decoration:  BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(image: AssetImage("assets/images/c1.jpg"),fit: BoxFit.cover)
                           )

                       ),
                     )
                    ],
                ),SizedBox(height: 20,),
                Stack(
                   children: [
                     Container(
                      height: 150,
                     width: 300,
                       decoration:  BoxDecoration(
                          color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 138.0,top: 30),
                         child: Column(
                         children: [
                           ElevatedButton(
                               style: ElevatedButton.styleFrom( backgroundColor:Color(0xFF885A3A),minimumSize: Size(50, 50)),
                               onPressed: () {

                           }, child: Text("See Offer", style: TextStyle(color: Colors.white),))
                         ],
                                          ),
                       ),
                     ),
                     InkWell(

                       child: Container(
                         height: 150,
                         width: 150,
                           decoration:  BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(image: AssetImage("assets/images/c7.jpg"),fit: BoxFit.cover)
                           )

                       ),
                     )
                    ],
                ),SizedBox(height: 20,),
                Stack(
                   children: [
                     Container(
                      height: 150,
                     width: 300,
                       decoration:  BoxDecoration(
                          color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 138.0,top: 30),
                         child: Column(
                         children: [
                           ElevatedButton(
                               style: ElevatedButton.styleFrom( backgroundColor:Color(0xFF885A3A),minimumSize: Size(50, 50)),
                               onPressed: () {

                           }, child: Text("See Offer", style: TextStyle(color: Colors.white),))
                         ],
                                          ),
                       ),
                     ),
                     InkWell(

                       child: Container(
                         height: 150,
                         width: 150,
                           decoration:  BoxDecoration(
                             color: Colors.red,
                             borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(image: AssetImage("assets/images/c6.jpg"),fit: BoxFit.cover)
                           )

                       ),
                     )
                    ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
