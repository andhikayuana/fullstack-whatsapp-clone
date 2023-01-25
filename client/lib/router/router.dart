import 'package:client/di/injection.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth_login/auth_login_screen.dart';
import 'package:client/presentation/auth_verify/auth_verify_screen.dart';
import 'package:client/presentation/chat/chat_screen.dart';
import 'package:client/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/auth-login',
      builder: (context, state) => const AuthLoginScreen(),
    ),
    GoRoute(
      path: '/auth-verify',
      builder: (context, state) => const AuthVerifyScreen(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => const ChatScreen(),
      redirect: (context, state) {
        if (!getIt<AuthRepository>().alreadyLogin()) {
          return '/auth-login';
        } else {
          return null;
        }
      },
    ),
  ],
);
