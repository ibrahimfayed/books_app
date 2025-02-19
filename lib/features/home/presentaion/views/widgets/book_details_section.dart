import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;

    return  Column(children: [
 Padding(
         padding: EdgeInsets.symmetric(horizontal: width*0.2),
         child:const CustomBookImage(),
       ),
      const SizedBox(height: 32,),
        Text(
      'The Jungle Book',
       style: Styles.textstyle30.copyWith(
        color: Colors.white),),
       const SizedBox(height: 13,),
       const Text('Rudyard Kipling',
       style: Styles.textstyle18,
      ),
      const SizedBox(height: 20,),
      const BookRating(
        mainAxisAlignment: MainAxisAlignment.center,),
      const SizedBox(height: 41,),
      const BooksAction(),
    ]

    );
  }
}