import 'package:flojics_task/authentication/presentation/widgets/textformfield_widget.dart';
import 'package:flojics_task/config/text_style/text_style.dart';
import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flojics_task/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 212.h,
              width: 381.w,
              child: Image.asset(ImageAssets.marvelLogo, fit: BoxFit.fill),
            ),
            Padding(
              padding: EdgeInsets.all(28.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                    AppStrings.connectWithUs,
                    textAlign: TextAlign.center,
                    style: StringsStyle.textStyle24,
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  const TextFormContanier(
                    isObscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    hintText: AppStrings.emailAdress,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const TextFormContanier(
                      hintText: AppStrings.password,
                      isObscureText: true,
                      keyboardType: TextInputType.visiblePassword),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppStrings.forgetPassword,
                        style: StringsStyle.textStyle17
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  SizedBox(
                    height: 41.h,
                    width: 320.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppStrings.homeScreenRoute);
                      },
                      child: Text(AppStrings.login,
                          style: StringsStyle.textStyle22.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(86.w)),
                          backgroundColor: AppColor.blackBlu),
                    ),
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.haveNotAccount,
                        style: StringsStyle.textStyle16,
                      ),
                      InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, AppStrings.intialRoute),
                          child: Text(
                            AppStrings.signUp,
                            style: StringsStyle.textStyle16
                                .copyWith(fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
