import 'package:cached_network_image/cached_network_image.dart';
import 'package:flojics_task/config/text_style/text_style.dart';
import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flojics_task/core/utils/enums.dart';
import 'package:flojics_task/scr/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      switch (state.movies) {
        case RequestState.loading:
          return const Center(
            child: CircularProgressIndicator(),
          );

        case RequestState.loaded:
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemCount: state.moviesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 212.h,
                      width: 143.w,
                      child: CachedNetworkImage(
                        imageUrl: state.moviesList[index].coverUrl,
                        fit: BoxFit.fill,
                        placeholder: (context, url) => const CircleAvatar(
                          backgroundColor: AppColor.blackBlu,
                          radius: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      state.moviesList[index].title,
                      style: StringsStyle.textStyle14.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ],
                ),
              );
            },
          );
        case RequestState.error:
          return const Text("Error");
      }
    });
  }
}
