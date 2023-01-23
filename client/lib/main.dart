import 'package:client/di/injection.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/bloc/auth_bloc.dart';
import 'package:client/router/router.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(getIt<AuthRepository>()),
        ),
      ],
      child: MaterialApp.router(
        theme: WhatsAppTheme.lightTheme,
        routerConfig: router,
      ),
    );
  }
}
