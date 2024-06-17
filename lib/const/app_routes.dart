
import 'package:go_router/go_router.dart';
import 'package:structure/views/auth_screen/sign_in/sign_in.dart';
import 'package:structure/views/auth_screen/sign_up/sign_up.dart';
import 'package:structure/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: SplashScreen.id,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
          path: '/signin',
          name: SignIn.id,
          builder: (context, state) => const SignIn(),
          routes: [
            GoRoute(
              path: 'signup',
              name: SignUp.id,
              builder: (context, state) => const SignUp(),
            )
          ]),
    ],
  );
}
