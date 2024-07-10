import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import 'books_action.dart';
import 'custom_horizontal_list_view_item.dart';
import 'rating_and_its_number.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomHorizontalListViewItem(
            imageUrl:
                'https://avatars.githubusercontent.com/u/158765874?s=400&u=e115ea47d4292481924877adeb0b742601466463&v=4',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Center(
          child: Text(
            'The Junngle Book',
            style: styles.textStyle30,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Center(
            child: Text(
              'Rudyard kipling',
              style: styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const RatingAndItsNumber(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
