import 'package:flutter/material.dart';
import 'package:core/style/style.dart';

void showLoading(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      insetPadding: EdgeInsets.zero,
      child: SizedBox.square(
        dimension: 100,
        child: Center(
          child: CircularProgressIndicator(
            color: green,
          ),
        ),
      ),
    ),
  );
}

Future<void> showDialogInfo(
  BuildContext context, {
  required String message,
  required void Function()? onPressed,
  bool canQuit = false,
}) {
  return showDialog(
    context: context,
    barrierDismissible: canQuit,
    builder: (context) => Dialog(
      child: SizedBox(
        width: 520,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                dense: true,
                title: Text(
                  message,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            OverflowBar(
              children: [
                OutlinedButton(
                  onPressed: onPressed,
                  child: const Text('Quitter'),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
