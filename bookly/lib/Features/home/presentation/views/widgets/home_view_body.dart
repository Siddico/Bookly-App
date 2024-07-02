import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_best_seller_list_view_item.dart';
import 'featured_horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          FeaturedHorizontalListView(),
          const SizedBox(
            height: 30,
          ),
          Text('Best Seller', style: styles.textStyle18),
          const SizedBox(
            height: 20,
          ),
          CustomBestSellerListViewItem()
        ],
      ),
    );
  }
}
