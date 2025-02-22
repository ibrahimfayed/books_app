import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(imageUrl: 'https://th.bing.com/th/id/R.4ed6322d934017b04a18bb70b2b783e5?rik=qgDshq4WrsEWsw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f8%2f2%2f5%2f415238.jpg&ehk=jJkRFoAzMCiV%2f57Kg67x0rnlJ4h2v2JUfyjXBfVgbhc%3d&risl=&pid=ImgRaw&r=0',),
            );
          }),
    );
  }
}
