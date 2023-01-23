import 'package:client/di/injection.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:client/presentation/auth/bloc/auth_bloc.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(AppStarted());
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Image.asset(
              "assets/images/WhatsApp.webp",
              scale: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("from"),
                Image.asset(
                  "assets/images/Meta.png",
                  scale: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
