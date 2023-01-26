import 'package:flutter/material.dart';

class DefaultLoading extends StatelessWidget {
  const DefaultLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Text('Please wait...'),
    );
  }

  static Future<void> showDismissable({
    required BuildContext context,
    required bool dismiss,
  }) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        //TODO: please dismiss when the future is done
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop();
        });
        return const DefaultLoading();
      },
    );
  }
}
