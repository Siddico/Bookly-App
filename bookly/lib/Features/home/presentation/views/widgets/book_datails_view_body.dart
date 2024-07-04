import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/rating_and_its_number.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_horizontal_list_view_item.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomHorizontalListViewItem(),
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
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like',
              style: styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
