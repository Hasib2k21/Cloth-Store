import 'package:flutter/material.dart';

class NotificationPageScreen extends StatefulWidget {
  const NotificationPageScreen({super.key});

  @override
  State<NotificationPageScreen> createState() => _NotificationPageScreenState();
}

class _NotificationPageScreenState extends State<NotificationPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Notification')
        ],
      ),
    );
  }
}
