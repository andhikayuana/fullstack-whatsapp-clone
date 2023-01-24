import 'package:client/di/injection.dart';
import 'package:client/presentation/auth/bloc/auth_bloc.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:country/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatefulWidget {
  final _phoneNumberController = TextEditingController();

  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthStatus.codeSent:
            print("CODE SENT");
            break;
          case AuthStatus.verificationCompleted:
            print("COMPLETED");
            context.go('/chat');
            break;
          default:
        }
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Enter your phone number"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _formAuthPhone(context, state),
            ));
      },
    );
  }

  Widget _formAuthPhone(BuildContext context, AuthState state) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                "WhatsApp will send an SMS message to verify your phone number.",
                textAlign: TextAlign.center,
              ),
              const Text(
                "What's my number?.",
                style: TextStyle(color: WhatsAppTheme.checkmarkBlue),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    DropdownButtonFormField<Country>(
                      value: state.country,
                      items: Countries.values
                          .map(
                            (Country country) => DropdownMenuItem(
                              value: country,
                              child: Text(
                                  "${country.flagEmoji} ${country.isoShortName}"),
                            ),
                          )
                          .toList(),
                      isExpanded: true,
                      onChanged: (value) {
                        getIt<AuthBloc>().add(CountryChanged(country: value!));
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: widget._phoneNumberController,
                      onChanged: (value) {
                        getIt<AuthBloc>()
                            .add(PhoneNumberChanged(phoneNumber: value));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(NextClicked());
            },
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}
