import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailureState(this.errorMessage);
}
