import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class TouchZoom extends StatefulWidget {
  const TouchZoom({
    super.key,
  });

  @override
  State<TouchZoom> createState() => _TouchZoomState();
}

class _TouchZoomState extends State<TouchZoom>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(begin: 1.0, end: 3.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onDoubleTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
          },
          child: Center(
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.diagonal3(Vector3(
                  _animation.value, _animation.value, _animation.value)),
              child: Image.network(
                'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096',
                width: 200,
                height: 200,
              ),
            ),
          )),
    );
  }
}
