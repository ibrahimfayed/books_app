import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custum_app_bar.dart';
import 'package:books_app/features/home/presentaion/views/widgets/featued_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 45,),
        Text('Best Seller',
        style: Styles.titleMedium,),
        BestSellerListViewItem()
        ],
      ),
    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill)
          ),
        ),
      ),
          Column(
            children: [
      
            ],
          )
        ],
      ),
    );
  }
}