import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final bool isPassword;
  final bool isNumber;
  final IconData? icon;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.isPassword = false,
    this.isNumber = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumber
          ? [FilteringTextInputFormatter.digitsOnly]
          : [],
      decoration: InputDecoration(
        hintText: myHint,
        prefixIcon: icon != null ? Icon(icon) : null,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.indigo, width: 2),
        ),
      ),
    );
  }
}