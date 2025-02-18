import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
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
        const SizedBox(width:30 ,),
         Expanded(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
           SizedBox(
            width: MediaQuery.of(context).size.width *0.5,
             child:const Text('Harry Potter and the Goblet of Fire',
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
             style: Styles.textstyle20,),
           ),
           const SizedBox(height: 8,),
                 const Text('J.K. Rowling',
           style: Styles.textstyle14,),
                 const SizedBox(height: 10,),
           Row(
            children: [
               Text('19.99 €',
              style: 
              Styles.textstyle20.copyWith(
              fontWeight: FontWeight.bold
              ),
              
              ),
             const SizedBox(width: 37,),
             const BookRating()
             
           
            ],
           )
                ],
              ),
         )
          ],
        ),
      ),
    );
  }
}
