import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo 
{
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BooksModel>>> fetchFeaturesBooks();
  Future<Either<Failure,List<BooksModel>>> fetchSimilarBooks({required String category});

}