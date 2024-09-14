import 'package:flutter/material.dart';

class SettingPageScreen extends StatefulWidget {
  const SettingPageScreen({super.key});

  @override
  State<SettingPageScreen> createState() => _SettingPageScreenState();
}

class _SettingPageScreenState extends State<SettingPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Setting')
        ],
      ),
    );
  }
}
