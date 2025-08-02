import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_styles.dart';
import '../../counter_controller.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterController>(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: counter.counterColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: counter.counterColor,
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Current Count',
            style: AppStyles.titleMedium,
          ),
          const SizedBox(height: 10),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Text(
              '${counter.count}',
              key: ValueKey<int>(counter.count),
              style: AppStyles.headlineLarge.copyWith(
                color: counter.counterColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}