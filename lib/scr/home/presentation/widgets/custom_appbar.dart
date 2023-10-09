import 'package:flojics_task/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            height: 24.h, width: 24.w, child: Image.asset(ImageAssets.drawer)),
        SizedBox(
            height: 20.h, width: 50.w, child: Image.asset(ImageAssets.minLogo)),
        SizedBox(
            height: 24.h,
            width: 24.w,
            child: Image.asset(ImageAssets.notification)),
      ],
    );
  }
}
