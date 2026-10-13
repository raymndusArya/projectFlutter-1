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
      color: const Color(0xFF3A3A3A),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            const Divider(color: Colors.white24),
            child,
          ],
        ),
      ),
    );
  }
}
