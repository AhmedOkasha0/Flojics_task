import 'package:cached_network_image/cached_network_image.dart';
import 'package:flojics_task/core/utils/app_color.dart';
import 'package:flojics_task/core/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTvShow extends StatelessWidget {
  const CustomListTvShow({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
    //   switch (state.tvShows) {
    //     case RequestState.loading:
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     case RequestState.loaded:
    return ListView.builder(
      scrollDirection: Axis.vertical,
      reverse: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 120.h, child: Image.asset("assets/images/test.png")),
          ],
        );
        // return Text(state.tvShowsList[index].directedBy);
        // return CachedNetworkImage(
        //     placeholder: (context, url) => const CircleAvatar(
        //           backgroundColor: AppColor.blackBlu,
        //           radius: 100,
        //         ),
        //     imageUrl: state.tvShowsList[index].coverUrl);
      },
    );
//         case RequestState.error:
//           return const Text("Error");
//       }
//     });
//   }
// }
  }
}
