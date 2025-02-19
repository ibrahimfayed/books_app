import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textstyle14
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 14,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
