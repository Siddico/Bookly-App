import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class CustomHorizontalListViewItem extends StatelessWidget {
  const CustomHorizontalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.3,
          // width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber,
              image: const DecorationImage(
                  image: AssetImage(AssetsData.test_image), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
