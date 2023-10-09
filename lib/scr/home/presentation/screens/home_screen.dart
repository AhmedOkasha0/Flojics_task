import 'package:flojics_task/core/services/service_locator.dart';
import 'package:flojics_task/core/utils/constants.dart';
import 'package:flojics_task/scr/home/presentation/bloc/home_bloc.dart';
import 'package:flojics_task/scr/home/presentation/widgets/custom_appbar.dart';
import 'package:flojics_task/scr/home/presentation/widgets/custom_list_tvshow.dart';
import 'package:flojics_task/scr/home/presentation/widgets/custom_listview.dart';
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
        child: SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h, width: 375, child: const CustomAppbar()),
                SizedBox(
                  height: 290.h,
                  child: const CustomListView(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Movies"), Image.asset(ImageAssets.seeMore)],
                ),
                Container(height: 500.h, child: const CustomListTvShow()),
              ],
            ),
          ),
        )));
  }
}
