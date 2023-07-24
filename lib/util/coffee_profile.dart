import 'package:flutter/material.dart';

class CoffeeProfile extends StatelessWidget {
  final String imageurl;
  final String coffeeInc;
  final String price;
  final String coffeeName;

  const CoffeeProfile({
    Key? key,
    required this.price,
    required this.coffeeInc,
    required this.coffeeName,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: 180,
        //  height: 30,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageurl,
                // height: 250,
                fit: BoxFit.cover,
                //width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 9, left: 10),
              child: Text(coffeeName),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: Text(
                coffeeInc,
                style: const TextStyle(
                    color: Colors.grey, fontSize: 11, letterSpacing: 1.1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ $price'),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
