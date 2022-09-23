import 'package:flutter/material.dart';

class ToolTipWidget extends StatefulWidget {
  const ToolTipWidget({
    super.key,
  });

  @override
  State<ToolTipWidget> createState() => _ToolTipWidgetState();
}

class _ToolTipWidgetState extends State<ToolTipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
            message: 'Mt. Everest',
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg/1280px-Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg')),
      ),
    );
  }
}
