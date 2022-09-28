import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:user_preference/home/home.dart';
import 'package:user_preference/settings/settings.dart';
import 'package:user_preference/share_preferences/preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor:
            Preferences.isDarkmode ? Colors.black : Colors.white,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      ),
    );
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: Preferences.isDarkmode ? ThemeData.dark() : ThemeData.light(),
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: HomePage.name,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/settings',
        name: SettingsPage.name,
        builder: (context, state) {
          return const SettingsPage();
        },
      ),
    ],
  );
}
