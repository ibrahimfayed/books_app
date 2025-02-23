import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.25,
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: state.books.length,//it solves the exception of range error 
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(
              imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',//in vedio 88 and i can put a url of an image in ''
            ),
          );
        }),
  );
}else if(state is FeaturedBooksFailure){
  return CutomErrorWidget(errMessage: state.errmessage,);
}else {
  return const CustomLoadingIndicator();
  }
      },
    );
  }
}
