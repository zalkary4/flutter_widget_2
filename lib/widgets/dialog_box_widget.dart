import 'package:flutter/material.dart';

class DialogBoxWidget extends StatefulWidget {
  const DialogBoxWidget({
    super.key,
  });

  @override
  State<DialogBoxWidget> createState() => _DialogBoxWidgetState();
}

class _DialogBoxWidgetState extends State<DialogBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: showMyDialog,
          child: const Text('Show my dialog'),
        ),
      ),
    );
  }

  showMyDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Close"),
          ),
        ],
        title: const Text('Coding Flutter'),
        content: const Text("This is my alert dialog"),
      ),
    );
  }
}
