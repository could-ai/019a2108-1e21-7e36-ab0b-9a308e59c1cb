import 'package:flutter/material.dart';

enum BadgeVariant {
  primary,
  secondary,
  destructive,
  outline,
}

class Badge extends StatelessWidget {
  const Badge({
    super.key,
    required this.text,
    this.variant = BadgeVariant.primary,
  });

  final String text;
  final BadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Color backgroundColor;
    Color textColor;
    Border? border;

    switch (variant) {
      case BadgeVariant.primary:
        backgroundColor = colorScheme.primary;
        textColor = colorScheme.onPrimary;
        border = null;
        break;
      case BadgeVariant.secondary:
        backgroundColor = colorScheme.secondary;
        textColor = colorScheme.onSecondary;
        border = null;
        break;
      case BadgeVariant.destructive:
        backgroundColor = colorScheme.error;
        textColor = colorScheme.onError;
        border = null;
        break;
      case BadgeVariant.outline:
        backgroundColor = Colors.transparent;
        textColor = colorScheme.onSurface;
        border = Border.all(color: colorScheme.outline);
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
        border: border,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
