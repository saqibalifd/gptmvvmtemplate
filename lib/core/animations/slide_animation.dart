import 'package:flutter/material.dart';

import '../constants/constant_imports.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;
  final AxisDirection direction; // Add a direction parameter

  const SlideAnimation({
    Key? key,
    required this.child,
    this.direction = AxisDirection.down, // Default direction: from bottom
  }) : super(key: key);

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: AppDurations.second1,
      vsync: this,
    );

    // Determine the direction of the slide animation
    Offset beginOffset;
    switch (widget.direction) {
      case AxisDirection.up:
        beginOffset = const Offset(0.0, 1.0); // Slide from bottom to top
        break;
      case AxisDirection.down:
        beginOffset = const Offset(0.0, -1.0); // Slide from top to bottom
        break;
      case AxisDirection.left:
        beginOffset = const Offset(1.0, 0.0); // Slide from right to left
        break;
      case AxisDirection.right:
        beginOffset = const Offset(-1.0, 0.0); // Slide from left to right
        break;
      default:
        beginOffset = const Offset(0.0, -1.0); // Default direction
    }

    _offsetAnimation =
        Tween<Offset>(begin: beginOffset, end: Offset.zero).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
