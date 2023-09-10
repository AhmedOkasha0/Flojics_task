import 'package:flojics_task/core/services/service_locator.dart';
import 'package:flojics_task/home/presentation/bloc/home_bloc.dart';
import 'package:flojics_task/home/presentation/widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<HomeBloc>()
        ..add(GetMoviesListEvent())
        ..add(GetTvShowListEvent()),
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 100.h,
            child: const CustomListView(),
          )
        ],
      )),
    );
  }
}
