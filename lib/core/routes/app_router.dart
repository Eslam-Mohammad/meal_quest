

import 'package:go_router/go_router.dart';
import 'package:meal_quest/features/auth/presentation/views/login_view.dart';
import 'package:meal_quest/features/auth/presentation/views/sign_up_view.dart';
import 'package:meal_quest/features/boarding/presentation/views/boarding_view.dart';
import 'package:meal_quest/features/food/presentation/views/food_view.dart';
import 'package:meal_quest/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kSplashView='/splashView';
  static const kOnBoardingView='/onBoardingView';
  static const kSignUpView='/signUpView';
  static const kLogInView='/logInView';
  static const kHomeView = '/homeView';
  static const kFoodView = '/foodView';


  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) =>  const BoardingView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) =>  const SignUpView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) =>  const LoginView(),
      ),
      GoRoute(
        path:'/',
        builder: (context, state) =>  const FoodView(),
      ),
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      //
    ],
  );
}
