import 'package:flutter/material.dart';

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({
    super.key,
  });

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              child: Container(
                height: 200,
                color: Colors.orange,
              ),
            ),
            Flexible(
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
