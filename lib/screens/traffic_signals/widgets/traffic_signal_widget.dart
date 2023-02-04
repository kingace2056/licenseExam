import 'package:flutter/material.dart';
import 'package:license_exam/constraints/constraints.dart';

class TrafficSignalCard extends StatelessWidget {
  final String image;
  final String text;
  const TrafficSignalCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: primGrey,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                color: primGrey,
                blurRadius: 1.0,
                offset: const Offset(0, 1))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              width: double.maxFinite,
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
