import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({
    super.key,
  });

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
