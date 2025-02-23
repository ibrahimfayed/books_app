import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
final HomeRepo homeRepo;
  
  Future<void>featchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
   var result = await homeRepo.fetchSimilarBooks(category: category);
   result.fold((failure){
    emit(SimilarBooksFailure(failure.errmessage));
   }, (books){
    emit(SimilarBooksSuccess(books));
   });

  }
}

