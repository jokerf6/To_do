import 'package:flutter/material.dart';

class aalertDialog extends StatelessWidget {
  const aalertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Alert Dialog Box"),
      content: const Text("You have raised a Alert Dialog Box"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Container(
            color: Colors.green,
            padding: const EdgeInsets.all(14),
            child: const Text("okay"),
          ),
        ),
      ],
    );
  }
}
