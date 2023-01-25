import 'package:client/di/injection.dart';
import 'package:client/presentation/auth_login/bloc/auth_login_bloc.dart';
import 'package:client/presentation/auth_login/bloc/auth_login_event.dart';
import 'package:client/presentation/auth_login/bloc/auth_login_state.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:country/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Enter your phone number"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: _AuthLoginView(),
      ),
    );
  }
}

class _AuthLoginView extends StatefulWidget {
  const _AuthLoginView({super.key});

  @override
  State<_AuthLoginView> createState() => _AuthLoginViewState();
}

class _AuthLoginViewState extends State<_AuthLoginView> {
  final TextEditingController _countryCodeController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final AuthLoginBloc _authLoginBloc = getIt<AuthLoginBloc>();

  @override
  void initState() {
    _countryCodeController.text = Countries.idn.countryCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthLoginBloc, AuthLoginState>(
      bloc: _authLoginBloc,
      listenWhen: (previous, current) =>
          current.status == AuthLoginStatus.smsCodeSent,
      listener: (context, state) {
        context.push('/auth-verify');
      },
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
                            _authLoginBloc.add(OnCountryChanged(value!));
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
                                  _authLoginBloc
                                      .add(OnPhoneNumberChanged(value));
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
                  _authLoginBloc.add(OnNextClicked());
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
