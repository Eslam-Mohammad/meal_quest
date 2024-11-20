

import 'package:go_router/go_router.dart';
import 'package:meal_quest/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kSplashView='/splashView';
  static const kOnBoardingView='/onBoardingView';
  static const kSignUpView='/signUpView';
  static const kLogInView='/logInView';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),

      ),
      // GoRoute(
      //   path: kOnBoardingView,
      //   builder: (context, state) =>  const OnBoardingView(),
      //
      // ),
      //
      // GoRoute(
      //   path: kSignUpView,
      //   builder: (context, state) =>  const SignUpView(),
      //
      // ),
      // GoRoute(
      //   path: kLogInView,
      //   builder: (context, state) =>  const LogInView(),
      //
      // ),
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      //
    ],
  );
}
