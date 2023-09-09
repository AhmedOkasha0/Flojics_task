import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormContanier extends StatelessWidget {
  final bool isObscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const TextFormContanier({
    super.key,
    required this.isObscureText,
    required this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.w),
              borderSide: const BorderSide(
                color: Colors.grey,
              ))),
    );
  }
}
