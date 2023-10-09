import 'package:flojics_task/config/text_style/text_style.dart';
import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flojics_task/core/utils/constants.dart';
import 'package:flojics_task/scr/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flojics_task/scr/authentication/presentation/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
           Navigator.pushReplacementNamed(context, AppStrings.homeScreenRoute);
        }
      },
      child: Scaffold(
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
                     TextFormContanier(
                      controller: emailController,
                      isObscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      hintText: AppStrings.emailAdress,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                     TextFormContanier(
                      controller: passwordController,
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
                          context.read<AuthBloc>().add(
                            LoginEvent(emailAdress:emailController.text ,password:passwordController.text ),
                          );
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
      ),
    );
  }
}
