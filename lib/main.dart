import 'package:books_app/constants.dart';
import 'package:books_app/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: //ThemeData() to use dark mode remove these two () and add dark()
      ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kPrimaryColor//i put the color here because i will use it at the whole of the pages
      ),
      home:const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}