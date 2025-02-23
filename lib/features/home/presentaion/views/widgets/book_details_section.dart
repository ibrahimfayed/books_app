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

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.2),
        child: 
        const CustomBookImage(
          imageUrl: 'https://th.bing.com/th/id/R.4ed6322d934017b04a18bb70b2b783e5?rik=qgDshq4WrsEWsw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f8%2f2%2f5%2f415238.jpg&ehk=jJkRFoAzMCiV%2f57Kg67x0rnlJ4h2v2JUfyjXBfVgbhc%3d&risl=&pid=ImgRaw&r=0',),
      ),
      const SizedBox(
        height: 32,
      ),
      Text(
        'The Jungle Book',
        style: Styles.textstyle30.copyWith(color: Colors.white),
      ),
      const SizedBox(
        height: 13,
      ),
      const Text(
        'Rudyard Kipling',
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
      const BooksAction(),
    ]);
  }
}
