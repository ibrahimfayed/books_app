import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  //i build a different app bar becuse it is already different because the previous one had an image so it is not prefered to reuse it if it is
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons
                .close)), //in the UI if there is a space around the icon so it is prefered to use iconButton if not use usual icon
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
