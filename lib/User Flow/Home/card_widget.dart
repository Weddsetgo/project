import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;

  const CardWidget({required this.onTap, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5), // Set the border radius here
        child: Card(
          elevation: 5,
          child: Container(
            width: 140, // Set the desired width for your cards
            height: 140, // Set the desired height for your cards
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
