import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeeList extends StatelessWidget {
  final String coffieName;
  final bool isselcted;
  final VoidCallback ontap;
  const CoffeeList({
    Key? key,
    required this.coffieName,
    required this.isselcted,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          coffieName,
          style: TextStyle(
              fontSize: 18, color: isselcted ? Colors.orange : Colors.grey),
        ),
      ),
    );
  }
}
