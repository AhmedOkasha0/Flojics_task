import 'package:flojics_task/authentication/presentation/widgets/textformfield_widget.dart';
import 'package:flojics_task/config/text_style/text_style.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 91.h,
            ),
            const Text(
              AppStrings.hey,
              style: StringsStyle.textStyle32,
            ),
            SizedBox(
              height: 24.h,
            ),
            const Text(
              AppStrings.enterYourCredentials,
              style: StringsStyle.textStyle20,
            ),
            SizedBox(
              height: 62.h,
            ),
            const Text(
              AppStrings.name,
              style: StringsStyle.textStyle22,
            ),
            SizedBox(
              height: 10.h,
            ),
            const TextFormContanier(
              isObscureText: false,
              keyboardType: TextInputType.name,
            )
          ],
        ),
      )),
    );
  }
}
