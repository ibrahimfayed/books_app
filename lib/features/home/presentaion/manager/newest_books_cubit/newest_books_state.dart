part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

//final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String errmessage;

 const NewestBooksFailure(this.errmessage);

}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BooksModel>books;

  const NewestBooksSuccess(this.books);

}
