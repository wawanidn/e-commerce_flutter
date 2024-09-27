import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
   Itemswidget({super.key});

  List<String> myProductName = [
    'Food',
    'Outfit',
    'Electronic',
    'Furnitur',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [

        for (int i = 0; i < myProductName.length; i++)

        Container(
          padding:  const EdgeInsets.only(left: 15, right: 15, top: 8),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '-50%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'itemPage');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'images/${i + 1}.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  myProductName[i],//tampilan nama produk
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'write description of product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical:5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$55',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.blueGrey,
                      ),
                  ],
                ),
                )
            ],
          ),
        )
      ],
      );
  }
}