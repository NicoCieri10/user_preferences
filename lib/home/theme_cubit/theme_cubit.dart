import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required bool isDarkmode,
  }) : super(
          ThemeState(
            isDarkmode ? ThemeData.dark() : ThemeData.light(),
          ),
        );

  void setLightMode(ThemeData currentTheme) {
    currentTheme = ThemeData.light();
    emit(ThemeState(currentTheme));
  }

  void setDarkMode(ThemeData currentTheme) {
    currentTheme = ThemeData.dark();
    emit(ThemeState(currentTheme));
  }
}
