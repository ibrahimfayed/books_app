import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:books_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Search Results',
            style: Styles.textstyle18.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
