import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {
        super.key,
         this.mainAxisAlignment = MainAxisAlignment.start,
          required this.rating,
           required this.count
           });
  final String rating ;//i can replace this and use booksmodel directlly it matches then encapculation
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '0',
          style: Styles.textstyle16.copyWith(color: const Color(0xffFFFFFF)),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '$count',
          style: Styles.textstyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
