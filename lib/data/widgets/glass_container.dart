import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color color;
  final double opacity;
  final double blurX;
  final double blurY;
  final double borderWidth;

  const GlassContainer({
    Key? key,
    required this.child,
    this.borderRadius = 12.0,
    this.color = Colors.white,
    this.opacity = 0.2,
    this.blurX = 10.0,
    this.blurY = 10.0,
    this.borderWidth = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(opacity),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
                color: color.withOpacity(opacity + 0.1), width: borderWidth),
          ),
          child: child,
        ),
      ),
    );
  }
}
