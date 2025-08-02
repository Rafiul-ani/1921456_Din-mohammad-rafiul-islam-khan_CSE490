import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../counter_controller.dart';
import 'widgets/counter_display.dart';
import 'widgets/counter_controls.dart';
import 'widgets/counter_message.dart';
import 'widgets/theme_switcher.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Game'),
          // actions: const [ThemeSwitcher()],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterDisplay(),
              SizedBox(height: 40),
              CounterMessage(),
              SizedBox(height: 40),
              CounterControls(),
            ],
          ),
        ),
      ),
    );
  }
}