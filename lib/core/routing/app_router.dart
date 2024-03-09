import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/Features/cart/cart_screen.dart';
import 'package:laza/Features/create%20account/lets_start.dart';
import 'package:laza/Features/favorites/favorites_screen.dart';
import 'package:laza/Features/forget%20password/forgot_password.dart';
import 'package:laza/Features/home/presetnation/ui/home_screen.dart';
import 'package:laza/Features/login/login_screen.dart';
import 'package:laza/Features/main%20layout/bloc/cubit/main_layout_cubit.dart';
import 'package:laza/Features/main%20layout/presentatin/main_layout_screen.dart';
import 'package:laza/Features/onboarding/onboarding_screen.dart';
import 'package:laza/Features/review/presentation/ui/add_review_screen.dart';
import 'package:laza/Features/review/presentation/ui/review_screen.dart';
import 'package:laza/Features/sign%20up/sign_up_screen.dart';
import 'package:laza/Features/wallet/wallet_scren.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onboardingScreen:
        return PageTransition(
          child: const OnboardingScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.forgotpasswordScreen:
        return PageTransition(
          child: const ForgetPasswordScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      case Routes.mainLayout:
        return PageTransition(
          child: BlocProvider(
            create: (context) => MainLayoutCubit(),
            child: const MainLayoutScreen(),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      // case Routes.productDetailsScreen:
      //   return PageTransition(
      //     child: const ProductDetails(),
      //     type: PageTransitionType.fade,
      //     duration: const Duration(milliseconds: 200),
      //     alignment: Alignment.center,
      //     settings: settings,
      //   );

      case Routes.letsStart:
        return PageTransition(
          child: const LetsStart(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.signUpScreen:
        return PageTransition(
          child: const SignUpScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.loginScreen:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.reviewScreen:
        return PageTransition(
          child: const ReviewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.addReviewScreen:
        return PageTransition(
          child: const AddReviewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      default:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
    }
  }

  List<Widget> screen = [
    const HomeScreen(),
    const FavoritesScreen(),
    const CartScreen(),
    const WalletScreen()
  ];
}
