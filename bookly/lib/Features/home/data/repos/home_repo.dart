import 'package:bookly/Core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>>
      fetchNewestBooks(); // Either<error, success>
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String query});
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
