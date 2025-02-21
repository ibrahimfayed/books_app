import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async{
    try {
  var data = await apiService.get(
    endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');

    List<BooksModel>books = [];//step 1 if i take just part of api it a copy
    for (var item in data['items']) {//step 2 to line 20
      books.add(BooksModel.fromJson(item));
       }
    return right(books);
} catch (e) {
  if (e is DioException) {//i replaced DioError by DioException
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturesBooks() async{
    try {
  var data = await apiService.get(
    endpoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');

    List<BooksModel>books = [];//step 1 if i take just part of api it a copy
    for (var item in data['items']) {//step 2 to line 20
      books.add(BooksModel.fromJson(item));
       }
    return right(books);
} catch (e) {
  if (e is DioException) {//i replaced DioError by DioException
    return left(ServerFailure.fromDioException(e));
  }
  return left(ServerFailure(e.toString()));
}
  }
}