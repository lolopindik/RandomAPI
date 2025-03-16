import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/riverpod/counter.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerHeight = screenHeight * 0.05;
    final Color primaryColor = Theme.of(context).primaryColor;
    final BorderSide whiteBorder = BorderSide(width: 2, color: Colors.white);
    final BorderRadius leftRadius = BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),
    );
    final BorderRadius rightRadius = BorderRadius.only(
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );

    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIconButtonContainer(
            icon: Icons.remove,
            borderRadius: leftRadius,
            height: containerHeight,
            color: primaryColor,
            border: whiteBorder,
            onPressed: () => ref.read(counterProvider).decrement(),
          ),
          Container(
            height: containerHeight,
            width: screenWidth * 0.2,
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: Center(
              child: Text(
                ref.watch(counterProvider).counter.toString(),
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white),
              ),
            ),
          ),
          _buildIconButtonContainer(
            icon: Icons.add,
            borderRadius: rightRadius,
            height: containerHeight,
            color: primaryColor,
            border: whiteBorder,
            onPressed: () => ref.read(counterProvider).increment(),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButtonContainer({
    required IconData icon,
    required BorderRadius borderRadius,
    required double height,
    required Color color,
    required BorderSide border,
    required VoidCallback onPressed,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(border),
        borderRadius: borderRadius,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
