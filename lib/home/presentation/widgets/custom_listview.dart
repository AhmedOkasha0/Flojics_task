import 'package:cached_network_image/cached_network_image.dart';
import 'package:flojics_task/core/utils/enums.dart';
import 'package:flojics_task/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            itemCount: state.moviesList.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: state.moviesList[index].coverUrl,
                placeholder: (context, url) => const CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 150,
                ),
              );
            },
          );
        case RequestState.error:
          return Text("Error");
      }
    });
  }
}
