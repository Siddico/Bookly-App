import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';
import 'books_action.dart';
import 'custom_horizontal_list_view_item.dart';
import 'rating_and_its_number.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomHorizontalListViewItem(
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Center(
          child: Text(
            book.volumeInfo!.title!,
            style: styles.textStyle30,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Center(
            child: Text(
              book.volumeInfo!.authors![0],
              style: styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        RatingAndItsNumber(
          rating: book.volumeInfo!.pageCount!,
          count: book.volumeInfo!.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
