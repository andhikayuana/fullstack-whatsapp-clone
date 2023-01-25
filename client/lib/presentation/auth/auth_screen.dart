import 'package:client/di/injection.dart';
import 'package:client/presentation/auth/bloc/auth_bloc.dart';
import 'package:client/presentation/auth/bloc/auth_event.dart';
import 'package:client/presentation/auth/bloc/auth_state.dart';
import 'package:client/presentation/auth/view/verify_phone_number_view.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:country/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        print("LISTENER");
        print(state.toString());
        // switch (state.status) {
        //   case AuthStatus.codeSent:
        //     print("CODE SENT");
        //     break;
        //   case AuthStatus.verificationCompleted:
        //     print("COMPLETED");
        //     context.go('/chat');
        //     break;
        //   default:
        // }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Enter your phone number"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _contentView(context, state),
          ),
        );
      },
    );
  }

  Widget _contentView(BuildContext context, AuthState state) {
    if (state is AuthStateChanged) {
      return const EnterPhoneNumberView();
    } else if (state is AuthStateVerifyChanged) {
      return const VerifyPhoneNumberView();
    } else {
      return const Text("Unknown state");
    }
  }
}

class EnterPhoneNumberView extends StatefulWidget {
  const EnterPhoneNumberView({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterPhoneNumberView> createState() => _EnterPhoneNumberViewState();
}

class _EnterPhoneNumberViewState extends State<EnterPhoneNumberView> {
  final _countryCodeController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _authBloc = getIt<AuthBloc>();

  @override
  void initState() {
    _countryCodeController.text = Countries.idn.countryCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
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
                          value: (state as AuthStateChanged).selectedCountry,
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
                            _authBloc.add(OnCountrySelected(value!));
                            _countryCodeController.text = value.countryCode;
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60,
                              child: TextFormField(
                                controller: _countryCodeController,
                                textAlign: TextAlign.center,
                                decoration:
                                    const InputDecoration(prefix: Text("+")),
                                enabled: false,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                controller: _phoneNumberController,
                                onChanged: (value) {
                                  _authBloc.add(OnPhoneNumberChanged(value));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text("Carrier SMS charges may apply"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _authBloc.add(OnNextClicked(false));
                },
                child: const Text("Next"),
              ),
            ],
          ),
        );
      },
    );
  }
}
