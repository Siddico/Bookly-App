import 'package:bookly/Core/widgets/custom_error_widget.dart';
import 'package:bookly/Core/widgets/custom_loading_indecator.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookly/Features/search/presentation/manager/searched_books_cubit/searched_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/custom_best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksSuccessState) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomBestSellerListViewItem(
                  bookModel: state.books[index],
                );
              });
        } else if (state is SearchedBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndecator();
        }
      },
    );
  }
}
