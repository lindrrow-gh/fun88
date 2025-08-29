import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  final Color? color;
  final VoidCallback onPressed;
  final Widget child;
  const AppFilledButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return FilledButton(
      onPressed: onPressed,
      style: color != null
          ? theme.filledButtonTheme.style?.copyWith(
              backgroundColor: WidgetStateProperty.all(color),
            )
          : null,
      child: child,
    );
  }
}

class AppIconButton extends StatelessWidget {
  final Widget icon;
  final Text? label;
  final VoidCallback onPressed;
  const AppIconButton({
    super.key,
    required this.icon,
    this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [icon, SizedBox(height: 5), if (label != null) label!],
        ),
      ),
    );
  }
}
