import 'package:flojics_task/authentication/presentation/widgets/textformfield_widget.dart';
import 'package:flojics_task/config/text_style/text_style.dart';
import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 47.h,
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
          SizedBox(
            height: 45.h,
            child: const TextFormContanier(
              isObscureText: false,
              keyboardType: TextInputType.name,
            ),
          ),
          SizedBox(
            height: 21.h,
          ),
          const Text(
            AppStrings.emailAdress,
            style: StringsStyle.textStyle22,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 45.h,
            child: const TextFormContanier(
              isObscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 21.h,
          ),
          const Text(
            AppStrings.password,
            style: StringsStyle.textStyle22,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 43.h,
            child: const TextFormContanier(
              isObscureText: false,
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Row(
            children: [
              Text(
                AppStrings.iAgreeTo,
                style: StringsStyle.textStyle14.copyWith(color: AppColor.grey),
              ),
              const Text(AppStrings.termsPrivacy),
            ],
          ),
          SizedBox(
            height: 27.h,
          ),
          SizedBox(
            height: 48.h,
            width: 332.w,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(AppStrings.signUp,
                  style: StringsStyle.textStyle22.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700)),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.w)),
                  backgroundColor: AppColor.blackBlu),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.iHaveAccount,
                style:
                    StringsStyle.textStyle16.copyWith(color: AppColor.blackBlu),
              ),
              Text(
                AppStrings.login,
                style: StringsStyle.textStyle16.copyWith(
                    fontWeight: FontWeight.w700, color: AppColor.blackBlu),
              )
            ],
          )
        ],
      ),
    ));
  }
}
