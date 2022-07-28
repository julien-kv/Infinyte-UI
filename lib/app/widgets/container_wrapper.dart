import 'package:flutter/material.dart';

class ContainerWrapper extends StatelessWidget {
  const ContainerWrapper(
      {Key? key,
      required this.child,
      this.borderRadius,
      this.boxShadow,
      this.backgroundColor,
      this.margin})
      : super(key: key);
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Color? backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ?? const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: BoxDecoration(
            borderRadius: borderRadius ??
                const BorderRadius.horizontal(
                  right: Radius.circular(5),
                  left: Radius.circular(5),
                ),
            boxShadow: boxShadow ??
                [
                  BoxShadow(
                    blurRadius: 15,
                    color: const Color(0xffCDD1DC)
                        .withOpacity(0.4), // This line was added
                  ),
                ],
            color: backgroundColor ?? Colors.white),
        child: child);
  }
}
