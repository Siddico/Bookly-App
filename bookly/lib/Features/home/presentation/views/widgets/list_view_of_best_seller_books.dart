import 'package:flutter/material.dart';

import 'custom_best_seller_list_view_item.dart';

class ListViewOfBestSellerBooks extends StatelessWidget {
  const ListViewOfBestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomBestSellerListViewItem();
        });
  }
}
