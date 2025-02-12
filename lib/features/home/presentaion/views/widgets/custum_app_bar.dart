import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        left: 20, right: 20,top: 50,bottom: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.asset(
            AssetsData.logo,
            height: 20,
            fit: BoxFit.cover,
            
            ),
          ),
          
          const Spacer(),
          
          IconButton(
            onPressed: (){},
             icon:const Icon(
              Icons.search,
              size: 30,))
        ],
      ),
    );
  }
}