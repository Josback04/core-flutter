import 'package:flutter/material.dart';
import 'package:core/style/style.dart';

void showValidateDialog(BuildContext context) {
  const Duration(
    seconds: 2,
  );
  showDialog(
    context: context,
    builder: (context) => const Dialog(
      insetPadding: EdgeInsets.zero,
      child: SizedBox.square(
        dimension: 100,
        child: Center(
            child: Icon(
          Icons.check_circle_sharp,
          size: 45,
          color: green,
        )),
      ),
    ),
  );
}
