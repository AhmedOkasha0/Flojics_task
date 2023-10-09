import 'package:flojics_task/core/utils/constants.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [Image.asset(ImageAssets.minLogo)],
        ),
        Column(
          children: [
            Text("ccccccccccc"),
            Text("ccccccccccc"),
            Text("ccccccccccc"),
            Text("ccccccccccc"),
          ],
        )
      ],
    );
  }
}
