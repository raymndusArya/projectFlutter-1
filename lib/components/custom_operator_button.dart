import 'package:flutter/material.dart';

class CustomButtonOperator extends StatelessWidget {
  final String myText;
  final VoidCallback onPressed;

  const CustomButtonOperator({
    super.key,
    required this.myText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 13, 150, 255),
      ),  
      child: Text(
        myText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}