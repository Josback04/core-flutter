import 'package:flutter/material.dart';
import 'package:core/style/style.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonStyle(context).copyWith(
        backgroundColor: const WidgetStatePropertyAll(Colors.red),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: buttonStyle(context),
      child: Text(title),
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({
    required this.title,
    required this.onPressed,
    super.key,
    this.onLongPressed,
  });

  final String title;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: buttonStyle(context).copyWith(
        backgroundColor: WidgetStatePropertyAll(ThemeData().primaryColor),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
      ),
      child: Text(title),
    );
  }
}

class ConfirmOutlinedButton extends StatelessWidget {
  const ConfirmOutlinedButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: buttonStyle(context).copyWith(
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        foregroundColor: const WidgetStatePropertyAll(Colors.blue),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(color: Colors.blue),
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
