import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentaion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
  return ListView.builder(
      //shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero, //too important
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.symmetric(vertical: 4.5),
          child: BookListViewItem(booksModel: state.books[index],),//to bring the fir
        );
      });
}else if(state is NewestBooksFailure){
  return CutomErrorWidget(errMessage: state.errmessage,);
}else{
  return const CustomLoadingIndicator(); 
}
      },
    );
  }
}
