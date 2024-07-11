import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_horizontal_list_view_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/rating_and_its_number.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/assets.dart';
import '../../../data/models/book_model/book_model.dart';

class CustomBestSellerListViewItem extends StatelessWidget {
  const CustomBestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.KBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomHorizontalListViewItem(
                  imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo!.title!,
                        style: styles.textStyle20
                            .copyWith(fontFamily: KGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Opacity(
                      opacity: 0.50,
                      child: Text(bookModel.volumeInfo!.authors![0],
                          style: styles.textStyle14),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        RatingAndItsNumber(
                          rating: bookModel.volumeInfo!.pageCount!,
                          count: bookModel.volumeInfo!.pageCount!,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
