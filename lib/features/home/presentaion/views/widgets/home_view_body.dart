import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:books_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custum_app_bar.dart';
import 'package:books_app/features/home/presentaion/views/widgets/featued_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Padding(
              padding: EdgeInsets.zero,
              child: FeaturedBooksListView(),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text('Best Seller', style: Styles.textstyle18),
            ),
            SizedBox(
              height: 23,
            ),
          ],
        )),
        SliverFillRemaining(
          //i use  SliverFillRemaining if i don't want to build anything after BestSellerListView so i can remove shrinkWrap: true because i don't want here to build all widgets once just build shown widgets
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
