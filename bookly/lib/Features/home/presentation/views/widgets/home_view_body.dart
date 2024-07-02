import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [const CustomAppBar(), FeaturedHorizontalListView()],
    );
  }
}
