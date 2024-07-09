import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final ImageProvider backgroundImage;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  const BackgroundContainer({
    Key? key,
    required this.backgroundImage,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
        borderRadius: borderRadius,
      ),
      padding: padding,
      margin: margin,
      child: child,
    );
  }
}