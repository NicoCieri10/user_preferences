import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_preference/home/home.dart';
import 'package:user_preference/settings/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drawer-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () {
              context.replaceNamed(HomePage.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outlined),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              context.replaceNamed(SettingsPage.name);
            },
          ),
        ],
      ),
    );
  }
}
