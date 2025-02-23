import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
   BlocProvider.of<SimilarBooksCubit>(context).featchSimilarBooks(
    category:widget.booksModel.volumeInfo.categories![0]);  //trigger here
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
