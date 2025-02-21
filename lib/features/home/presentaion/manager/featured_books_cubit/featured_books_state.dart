part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errmessage;

  const FeaturedBooksFailure(this.errmessage);
}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BooksModel>books;

  const FeaturedBooksSuccess(this.books);
}
