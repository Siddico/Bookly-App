import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/rating_and_its_number.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_horizontal_list_view_item.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
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
          BookDetailsSection(book: bookModel),
          const SizedBox(
            height: 50,
          ),
          const SimilarBooksSection(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
    // CustomScrollView(
    //   slivers: [
    //     SliverFillRemaining(
    //         child:    ],
    // );
  }
}
