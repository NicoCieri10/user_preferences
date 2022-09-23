import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const name = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: const Center(
        child: Text('HomePage'),
      ),
    );
  }
}