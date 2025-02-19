import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backgroundColor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              fontsize: 16,
              backgroundColor: Color(0xffEF8262),
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
