import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  const FittedBoxWidget({
    super.key,
  });

  @override
  State<FittedBoxWidget> createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: const FittedBox(
            child: Text(
              'flutter App',
              style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
