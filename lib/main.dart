import 'package:firebase_core/firebase_core.dart';
import 'package:flojics_task/config/routes/app_router.dart';
import 'package:flojics_task/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'scr/authentication/presentation/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ServiceLocator().init();
  runApp(const MyApp());
}

class AppModelImplementation {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocProvider(
        create: (context) => AuthBloc(sl(), sl()),
        child: const MaterialApp(
          onGenerateRoute: AppRouter.onGenerateRoute,
          // onGenerateRoute: AppRouter.onGenerateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
