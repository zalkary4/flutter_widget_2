import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({
    super.key,
  });

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      body: Center(
        child: RangeSlider(
          values: values,
          divisions: 7,
          labels: labels,
          onChanged: (newValue) {
            setState(() {
              values = newValue;
            });
          },
        ),
      ),
    );
  }
}
