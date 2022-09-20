import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatefulWidget {
  const CupertinoButtonWidget({
    super.key,
  });

  @override
  State<CupertinoButtonWidget> createState() => _CupertinoButtonWidgetState();
}

class _CupertinoButtonWidgetState extends State<CupertinoButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              child: const Text('Enabled'),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            CupertinoButton.filled(
              child: const Text('Enabled'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
