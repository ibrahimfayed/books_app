import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentaion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_app/features/splash/presentaion/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>()
          )..featchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>()
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: //ThemeData() to use dark mode remove these two () and add dark()
            ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
              kPrimaryColor, //i put the color here because i will use it at the whole of the pages
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        //home:const SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
