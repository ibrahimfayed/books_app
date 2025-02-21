import 'package:books_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero, //too important
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.5),
            child: BookListViewItem(),
          );
        });
  }
}
