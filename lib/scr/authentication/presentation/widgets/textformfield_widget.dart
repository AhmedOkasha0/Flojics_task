import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormContanier extends StatelessWidget {
  final bool isObscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? hintText;

  const TextFormContanier(
      {super.key,
      required this.isObscureText,
      required this.keyboardType,
       this.controller,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.w),
              borderSide: const BorderSide(
                color: AppColor.grey,
              ))),
    );
  }
}
