import 'package:flutter/material.dart';
import 'package:user_preference/widgets/custom_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const name = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xff191919),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('SettingsPage'),
      ),
    );
  }
}
