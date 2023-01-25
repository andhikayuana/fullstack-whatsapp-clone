import 'package:flutter/material.dart';

class AuthVerifyScreen extends StatelessWidget {
  const AuthVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify +62 86812345678"),
        centerTitle: true,
      ),
      body: Center(
        child: Text('verify'),
      ),
    );
  }
}
