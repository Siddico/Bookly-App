import 'package:bookly/Core/utils/styles.dart';
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
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter And The Goblet Of Fire',
                  style: styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
