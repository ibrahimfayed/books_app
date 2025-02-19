import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: //ThemeData() to use dark mode remove these two () and add dark()
          ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            kPrimaryColor, //i put the color here because i will use it at the whole of the pages
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      //home:const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
