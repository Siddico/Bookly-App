import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_horizontal_list_view.dart';
import 'list_view_of_best_seller_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: const CustomAppBar(),
              ),
              FeaturedHorizontalListView(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Seller', style: styles.textStyle18),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          // SliverFillRemaining
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListViewOfBestSellerBooks(),
          ),
        )
      ],
    );
  }
}
