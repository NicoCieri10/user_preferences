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
    var theme = currentTheme;
    theme = ThemeData.light();
    emit(ThemeState(theme));
  }

  void setDarkMode(ThemeData currentTheme) {
    var theme = currentTheme;
    theme = ThemeData.dark();
    emit(ThemeState(theme));
  }
}
