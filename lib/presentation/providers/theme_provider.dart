import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_all/styles/app_theme.dart';

final themeProviderLigth = StateProvider((ref) => true);

final colorListProvider = Provider((ref) => []);

final themeNotifierProvider = StateNotifierProvider((ref) => ThemeNofier());

class ThemeNofier extends StateNotifier{
  ThemeNofier() : super(AppTheme(colorThema: true));
}
