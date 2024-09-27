import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_e_commerce/widgets/ItemAppBar.dart';
import 'package:badges/badges.dart' as badges;
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_e_commerce/widgets/ItemBottomNavbar.dart';

class Itempage extends StatelessWidget {
   Itempage({super.key});

  List<Color> myColor = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          Itemappbar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'images/4.jpg',
              height: 300,
              ),
          ),
          Arc(
            edge: Edge.TOP, 
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(
                      top: 45,
                      bottom: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Product Title',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(
                        top: 5, 
                        bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4, 
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: 
                              const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.favorite,
                                color: Colors.lightBlue,
                              ),
                              onRatingUpdate: (index) {},
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 18,
                                      ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    child: const Text(
                                      '01',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlue,
                                      ),
                                      ),
                                  ),
                                   Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 18,
                                      ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    child: const Text(
                                      '01',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlue,
                                      ),
                                      ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'this is more  detailed description of the product you can write here more about the product',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.lightBlue,
                            ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  'size',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 1; 1<= 5; i++)
                                      Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 8,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          i.toString(),
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.lightBlue,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                              ],
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Text(
                                    'color',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 1; 1<= 5; i++)
                                        Container(
                                          height: 30,
                                          width: 30,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.symmetric(horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: myColor[i],
                                            borderRadius: BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 8,
                                              )
                                            ]
                                          ),
                                        )
                                      ],
                                    )
                                ],
                                ),
                            ),
                  ],
                ),
              ),
            ),
            ),
        ],
      ),
      bottomNavigationBar: Itembottomnavbar(),
    );
  }
}