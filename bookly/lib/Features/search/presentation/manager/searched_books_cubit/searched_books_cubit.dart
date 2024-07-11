import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import 'searched_books_states.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit(this.homeRepo) : super(SearchedBooksInitialState());

  final HomeRepo homeRepo;
  Future<void> fetchSearchedBooks(String query) async {
    emit(SearchedBooksLoadingState());
    var result = await homeRepo.fetchSearchedBooks(query: query);
    result.fold((failure) {
      emit(SearchedBooksFailureState(failure.errorMessage));
    }, (books) {
      List<BookModel> filteredBooks = books
          .where((books) => books.volumeInfo!.title!.contains(query))
          .toList();

      emit(SearchedBooksSuccessState(filteredBooks));
    });
  }
}
