import 'package:client/di/injection.dart';
import 'package:client/presentation/auth/bloc/auth_bloc.dart';
import 'package:client/presentation/splash/bloc/splash_bloc.dart';
import 'package:client/router/router.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  );
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => getIt<SplashBloc>(),
        ),
        BlocProvider(
          create: (BuildContext context) => getIt<AuthBloc>(),
        ),
      ],
      child: MaterialApp.router(
        theme: WhatsAppTheme.lightTheme,
        routerConfig: router,
      ),
    );
  }
}
