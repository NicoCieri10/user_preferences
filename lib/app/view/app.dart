import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_preference/home/home.dart';
import 'package:user_preference/home/theme_cubit/theme_cubit.dart';
import 'package:user_preference/settings/settings.dart';
import 'package:user_preference/share_preferences/preferences.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeCubit(isDarkmode: Preferences.isDarkmode),
        ),
      ],
      child: MyApp(),
    );
  }
}

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
    final state = context.read<ThemeState>();
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: state.currentTheme,
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
