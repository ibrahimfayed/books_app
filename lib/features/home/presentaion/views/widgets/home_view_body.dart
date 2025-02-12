import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custum_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
  CustomAppBar()
      ],
    );
  }
}
