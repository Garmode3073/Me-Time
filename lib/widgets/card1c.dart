import 'package:flutter/material.dart';
import 'package:sigmagg/globals.dart';

class Card1C extends StatelessWidget {
  final String text;
  final Function onTap;
  const Card1C({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
      child: Container(
        decoration: BoxDecoration(
          color: secPrimary,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFF7E1FF).withOpacity(0.4),
              blurRadius: 10,
              offset: Offset(-8, -8),
              spreadRadius: 2,
            ),
            BoxShadow(
              color: primary!.withOpacity(0.4),
              blurRadius: 10,
              offset: Offset(8, 8),
              spreadRadius: 2,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
