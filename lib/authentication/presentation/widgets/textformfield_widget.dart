import 'package:flutter/material.dart';

class TextFormContanier extends StatelessWidget {
  final bool isObscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String hintText;
  final IconData prefixIcon;

  const TextFormContanier(
      {super.key,
      required this.isObscureText,
      required this.keyboardType,
      this.controller,
      required this.hintText,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
      ),
    );
  }
}
