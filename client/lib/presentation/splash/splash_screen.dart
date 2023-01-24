import 'package:client/presentation/splash/bloc/splash_bloc.dart';
import 'package:client/presentation/splash/bloc/splash_event.dart';
import 'package:client/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(CheckCurrentAccount());
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is Loaded) {
          context.go('/chat');
        }
      },
      builder: (context, state) {
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
      },
    );
  }
}
