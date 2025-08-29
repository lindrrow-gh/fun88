import 'package:flutter/material.dart';
import 'package:fun88/core/constants/double.dart';

class Appbar extends StatelessWidget {
  final bool isBottom;
  final Widget child;
  const Appbar({super.key, this.isBottom = false, required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: AppBar().preferredSize.height,
      decoration: BoxDecoration(
        color: theme.appBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(
              0,
              isBottom ? -3 : 3,
            ), // Negative Y-offset to place shadow above
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        constraints: BoxConstraints(maxWidth: ConstantDouble.constraint),
        child: child,
      ),
    );
  }
}
