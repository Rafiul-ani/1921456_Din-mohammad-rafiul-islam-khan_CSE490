import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../counter_controller.dart';
import '../../../../core/constants/app_styles.dart';

class CounterMessage extends StatelessWidget {
  const CounterMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterController>(context);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Text(
        counter.message,
        key: ValueKey<String>(counter.message),
        style: AppStyles.bodyLarge.copyWith(
          color: counter.counterColor,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}