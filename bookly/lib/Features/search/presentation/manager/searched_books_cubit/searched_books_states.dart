import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';

abstract class SearchedBooksState extends Equatable {
  const SearchedBooksState();

  @override
  List<Object> get props => [];
}

class SearchedBooksInitialState extends SearchedBooksState {}

class SearchedBooksLoadingState extends SearchedBooksState {}

class SearchedBooksSuccessState extends SearchedBooksState {
  final List<BookModel> books;
  SearchedBooksSuccessState(this.books);
}

class SearchedBooksFailureState extends SearchedBooksState {
  final String errorMessage;
  SearchedBooksFailureState(this.errorMessage);
}
