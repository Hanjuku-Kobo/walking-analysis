import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  String title;
  Widget child;

  CardTemplate ({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 8, left: 8),
              child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
            ),
            child,
          ],
        ),
      )
    );
  }
}