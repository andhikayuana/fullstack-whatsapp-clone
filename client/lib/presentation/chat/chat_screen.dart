import 'package:client/di/injection.dart';
import 'package:client/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Chats"),
          ElevatedButton(
            onPressed: () async {
              await getIt<AuthRepository>().logout();
              context.go('/auth-login');
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
