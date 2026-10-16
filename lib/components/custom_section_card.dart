import 'package:flutter/material.dart';

class CustomSectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const CustomSectionCard({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF3A3A3A),
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            Divider(color: Colors.white24),
            child,
          ],
        ),
      ),
    );
  }
}
