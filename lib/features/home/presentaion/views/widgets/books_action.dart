import 'package:books_app/core/widgets/custom_button.dart';
import 'package:books_app/features/home/data/models/books_model/books_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.booksModel});
  
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
        const  Expanded(
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
              onPressed: ()async {
                Uri uri =Uri.parse(booksModel.volumeInfo.previewLink!); 
                if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }else{}
              },
              text: 'Free preview',
              fontsize: 16,
              backgroundColor:const Color(0xffEF8262),
              textcolor: Colors.white,
              borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
