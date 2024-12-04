import 'package:chatgpttemplate/core/constants/app_durations.dart';
import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const FadeAnimation({
    Key? key,
    required this.child,
    this.duration = AppDurations.second1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: duration,
      opacity: 1.0,
      child: child,
    );
  }
}
