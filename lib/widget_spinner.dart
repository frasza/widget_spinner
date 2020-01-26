library widget_spinner;

import 'package:flutter/material.dart';

class WidgetSpinner extends StatefulWidget {
  final Widget child;
  final double turns;
  final int duration;

  WidgetSpinner({Key key, this.child, this.turns = 10, this.duration = 10})
      : super(key: key);

  @override
  _WidgetSpinnerState createState() => _WidgetSpinnerState();
}

class _WidgetSpinnerState extends State<WidgetSpinner>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(seconds: widget.duration), vsync: this);
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutSine,
    );
  }

  void onTap() {
    _animationController.reset();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RotationTransition(
        turns: Tween<double>(begin: 0, end: widget.turns).animate(_animation),
        child: widget.child,
      ),
    );
  }
}
