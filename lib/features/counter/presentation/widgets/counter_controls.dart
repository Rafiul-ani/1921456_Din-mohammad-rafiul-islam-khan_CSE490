import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../counter_controller.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';

class CounterControls extends StatelessWidget {
  const CounterControls({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterController>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ControlButton(
              icon: Icons.remove,
              color: AppColors.danger,
              onPressed: counter.decrement,
            ),
            const SizedBox(width: 20),
            _ControlButton(
              icon: Icons.add,
              color: AppColors.success,
              onPressed: counter.increment,
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            counter.reset();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Counter has been reset!'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accent,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: const Icon(Icons.refresh, color: Colors.white),
          label: const Text('Reset', style: AppStyles.buttonText),
        ),
      ],
    );
  }
}

class _ControlButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _ControlButton({
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      elevation: 4,
      child: IconButton(
        iconSize: 36,
        style: IconButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
        ),
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}