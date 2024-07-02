import 'package:flutter/material.dart';

import '../../../../../Core/utils/assets.dart';

class CustomBestSellerListViewItem extends StatelessWidget {
  const CustomBestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.35 / 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.test_image),
                      fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
