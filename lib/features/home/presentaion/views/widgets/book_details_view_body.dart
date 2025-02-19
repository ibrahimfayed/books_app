import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:books_app/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:books_app/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
          SliverFillRemaining(
          hasScrollBody: false,//because customscrollbody is already scrollable
          child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 26),
      child:  Column(
        children: [
       CustomBookDetailsAppBar(),
       BookDetailsSection(),
        Expanded(
        child:  SizedBox(height: 50,)),
      SimilarBooksSection() 
             ],
           ),
          ),
         )
       ],
     );
   }
}

