import 'package:flutter/material.dart';

class SclidingText extends StatelessWidget {
  const SclidingText({
    super.key,
    required this.SclidingAnimation,
  });

  final Animation<Offset> SclidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SclidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: SclidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
