import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.2),
        child: 
         CustomBookImage(
          imageUrl: booksModel.volumeInfo.imageLinks?.thumbnail??'',),
      ),
      const SizedBox(
        height: 32,
      ),
      Text(
        booksModel.volumeInfo.title!,
        style: Styles.textstyle30.copyWith(color: Colors.white),
      textAlign: TextAlign.center,),
      
      const SizedBox(
        height: 13,
      ),
       Text(
       booksModel.volumeInfo.authors?[0]??'' ,
        style: Styles.textstyle18,
      ),
      const SizedBox(
        height: 20,
      ),
      const BookRating(
        rating: '5',
        count: 250,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 41,
      ),
       BooksAction(booksModel: booksModel,),
    ]);
  }
}
