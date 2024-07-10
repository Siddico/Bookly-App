import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fechBestSellerBooks() {
    // TODO: implement fechBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fechFeaturedBooks() {
    // TODO: implement fechFeaturedBooks
    throw UnimplementedError();
  }
}
