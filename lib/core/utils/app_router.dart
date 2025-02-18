import 'package:books_app/features/home/presentaion/views/book_details_view.dart';
import 'package:books_app/features/home/presentaion/views/home_view.dart';
import 'package:books_app/features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter 
{
static const kHomeView  = '/homeView'; 
static const kBookDetailsView  = '/bookDetailsView';
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/', //it is initially the start because it begins with /
      builder: (context, state) =>const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) =>const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) =>const BookDetailsView(),
    ),
  ],
);
}