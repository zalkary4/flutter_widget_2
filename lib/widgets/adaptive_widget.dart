import 'package:flutter/material.dart';

class AdaptiveWidget extends StatefulWidget {
  const AdaptiveWidget({
    super.key,
  });

  @override
  State<AdaptiveWidget> createState() => _AdaptiveWidgetState();
}

class _AdaptiveWidgetState extends State<AdaptiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider.adaptive(
              value: 1,
              onChanged: (double newValue) {},
            ),
            SwitchListTile(
              value: true,
              onChanged: (bool newValue) {},
              title: const Text('Switch List Title'),
            ),
            Icon(Icons.adaptive.share),
            const CircularProgressIndicator.adaptive()
          ],
        ),
      ),
    );
  }
}
