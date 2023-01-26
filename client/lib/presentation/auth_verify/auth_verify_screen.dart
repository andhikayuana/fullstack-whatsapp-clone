import 'package:client/di/injection.dart';
import 'package:client/presentation/auth_verify/bloc/auth_verify_bloc.dart';
import 'package:client/presentation/auth_verify/bloc/auth_verify_event.dart';
import 'package:client/presentation/auth_verify/bloc/auth_verify_state.dart';
import 'package:client/ui/WhatsAppTheme.dart';
import 'package:client/widgets/default_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthVerifyScreen extends StatelessWidget {
  const AuthVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<AuthVerifyBloc, AuthVerifyState>(
          builder: (context, state) {
            return Text("Verify ${state.phoneNumber}");
          },
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: _AuthVerifyContent(),
      ),
    );
  }
}

class _AuthVerifyContent extends StatefulWidget {
  const _AuthVerifyContent({super.key});

  @override
  State<_AuthVerifyContent> createState() => __AuthVerifyContentState();
}

class __AuthVerifyContentState extends State<_AuthVerifyContent> {
  final AuthVerifyBloc _authVerifyBloc = getIt<AuthVerifyBloc>();
  final TextEditingController _smsCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthVerifyBloc, AuthVerifyState>(
      bloc: _authVerifyBloc,
      listener: (context, state) async {
        //todo
        if (state.loading) {
          await DefaultLoading.showDismissable(
            context: context,
            dismiss: !state.loading,
          );
        } else if (state.verificationCompleted) {
          context.go('/chat');
        }
      },
      builder: (context, state) {
        return Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Waiting to automatically detect an SMS sent to ${state.phoneNumber}.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Wrong number?',
                    style: TextStyle(
                      color: WhatsAppTheme.checkmarkBlue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 100,
                    ),
                    child: Column(
                      children: [
                        _SmsCodeFormField(
                          smsCodeController: _smsCodeController,
                          authVerifyBloc: _authVerifyBloc,
                        ),
                        const SizedBox(height: 20),
                        const Text('Enter 6-digit code')
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: state.countDown > 0
                        ? null
                        : () {
                            _authVerifyBloc.add(
                                const AuthVerifyEvent.onResendSmsClicked());
                          },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.sms),
                            const SizedBox(width: 8),
                            const Text('Resend SMS'),
                          ],
                        ),
                        Text('0:${state.countDown}'),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _authVerifyBloc.add(const AuthVerifyEvent.onNextClicked());
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

class _SmsCodeFormField extends StatelessWidget {
  const _SmsCodeFormField({
    Key? key,
    required TextEditingController smsCodeController,
    required AuthVerifyBloc authVerifyBloc,
  })  : _smsCodeController = smsCodeController,
        _authVerifyBloc = authVerifyBloc,
        super(key: key);

  final TextEditingController _smsCodeController;
  final AuthVerifyBloc _authVerifyBloc;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      style: const TextStyle(
        letterSpacing: 8,
        fontSize: 20,
      ),
      decoration: const InputDecoration(
        hintText: '______',
        counterText: '',
      ),
      maxLength: 6,
      keyboardType: TextInputType.number,
      controller: _smsCodeController,
      onChanged: (value) {
        _authVerifyBloc.add(AuthVerifyEvent.onCodeChanged(smsCode: value));
      },
    );
  }
}
