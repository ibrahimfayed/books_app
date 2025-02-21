import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  
  Future<void>featchNewestBooks()async{//don't forget to change the name of this methoud until copy
    emit(NewestBooksLoading());
   var result = await homeRepo.fetchFeaturesBooks();
   result.fold((failure){
    emit(NewestBooksFailure(failure.errmessage));
   }, (books){
    emit(NewestBooksSuccess(books));
   });

  }
}
