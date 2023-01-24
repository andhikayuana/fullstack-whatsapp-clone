import 'package:client/di/injection.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/auth_screen.dart';
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
      path: '/auth',
      builder: (context, state) => AuthScreen(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => const ChatScreen(),
      redirect: (context, state) {
        if (!getIt<AuthRepository>().alreadyLogin()) {
          return '/auth';
        } else {
          return null;
        }
      },
    ),
  ],
);
