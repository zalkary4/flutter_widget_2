import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.orange,
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(height: 200),
      transform: Matrix4.rotationZ(0.2),
      child: const Text('Flutter Mapp'),
    );
  }
}
