import 'package:bloc/bloc.dart';
import 'package:books_app/core/errors/failures.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  
  Future<void>featchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
   var result = await homeRepo.fetchFeaturesBooks();
   result.fold((failure){
    emit(FeaturedBooksFailure(failure.errmessage));
   }, (books){
    emit(FeaturedBooksSuccess(books));
   });

  }
}
