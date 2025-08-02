import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../counter_controller.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterController>(context);

    return IconButton(
      icon: Icon(
        counter.themeMode == ThemeMode.light
            ? Icons.dark_mode
            : Icons.light_mode,
      ),
      onPressed: counter.toggleTheme,
    );
  }
}