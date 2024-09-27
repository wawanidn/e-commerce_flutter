import 'package:flutter/material.dart';

class Cartappbar extends StatelessWidget {
  const Cartappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.lightBlue,
            ),
          ),
         const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
                ),
            ),
            ),
            const Spacer(),
            const Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.blueGrey,
            )
        ],
      ),
    );
  }
}