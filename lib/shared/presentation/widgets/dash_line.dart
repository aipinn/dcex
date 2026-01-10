import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double height;
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final EdgeInsetsGeometry? margin;

  const DashedLine({
    super.key,
    this.height = 1,
    this.dashWidth = 6,
    this.dashSpace = 4,
    this.color = const Color(0xFFE0E0E0),
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dashCount = (constraints.maxWidth / (dashWidth + dashSpace))
              .floor();

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: height,
                child: DecoratedBox(decoration: BoxDecoration(color: color)),
              );
            }),
          );
        },
      ),
    );
  }
}
