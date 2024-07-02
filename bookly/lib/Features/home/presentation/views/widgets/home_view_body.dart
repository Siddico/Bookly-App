import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          const CustomAppBar(),
          FeaturedHorizontalListView(),
          const SizedBox(
            height: 35,
          ),
          Text('Best Seller', style: styles.titleMeduim)
        ],
      ),
    );
  }
}
