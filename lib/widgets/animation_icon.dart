import 'package:flutter/material.dart';

class AnimationIconWidget extends StatefulWidget {
  const AnimationIconWidget({Key? key}) : super(key: key);

  @override
  State<AnimationIconWidget> createState() => _AnimationIconWidgetState();
}

class _AnimationIconWidgetState extends State<AnimationIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool currentPlaying = false;

  void _iconTapped() {
    if (currentPlaying == false) {
      currentPlaying = true;
      _animationController.forward();
    } else {
      currentPlaying = false;
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _iconTapped,
        child: AnimatedIcon(
          progress: _animationController,
          icon: AnimatedIcons.play_pause,
          size: 150,
          color: Colors.red,
        ),
      ),
    ));
  }
}
