import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)..repeat(reverse: true);
    _animation = Tween(
      begin: Offset.zero,
      end: Offset(
        0,
        0.9,
      ),
    ).animate(
      _controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        AppAssets.prof1,
        width: 360.0,
        height: 390.0,
      ),
    );
  }
}
