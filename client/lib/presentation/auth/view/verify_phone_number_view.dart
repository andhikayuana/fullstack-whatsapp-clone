import 'package:flutter/material.dart';

class VerifyPhoneNumberView extends StatefulWidget {
  const VerifyPhoneNumberView({super.key});

  @override
  State<VerifyPhoneNumberView> createState() => _VerifyPhoneNumberViewState();
}

class _VerifyPhoneNumberViewState extends State<VerifyPhoneNumberView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify +62 86812345678")),
      body: Center(
        child: Text('verify'),
      ),
    );
  }
}
