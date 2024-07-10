import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indecator.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_best_seller_list_view_item.dart';

class ListViewOfBestSellerBooks extends StatelessWidget {
  const ListViewOfBestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CustomBestSellerListViewItem(
                bookModel: state.books[index],
              );
            });
      } else if (state is NewestBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return CustomLoadingIndecator();
      }
    });
  }
}
