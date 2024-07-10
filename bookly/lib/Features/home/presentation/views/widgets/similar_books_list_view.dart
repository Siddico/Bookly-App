import 'package:flutter/material.dart';

import 'custom_horizontal_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomHorizontalListViewItem(
              imageUrl:
                  'https://avatars.githubusercontent.com/u/158765874?s=400&u=e115ea47d4292481924877adeb0b742601466463&v=4',
            ),
          );
        },
      ),
    );
  }
}
