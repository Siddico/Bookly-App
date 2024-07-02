import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_horizontal_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [const CustomAppBar(), CustomHorizontalListViewItem()],
    );
  }
}
