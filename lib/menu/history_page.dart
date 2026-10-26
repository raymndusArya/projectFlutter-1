import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  static const Color bgColor = Color(0xFF2B2B2B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
      appBar: AppBar(
        title: Text("History Page"),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Text("Ini History", 
        style: TextStyle(
          color: Colors.white)
          ),
      ),
    );
  }
}
