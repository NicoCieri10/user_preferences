part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState(this.currentTheme);

  final ThemeData currentTheme;

  @override
  List<Object?> get props => [currentTheme];
}
