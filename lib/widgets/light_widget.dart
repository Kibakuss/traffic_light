import 'package:flutter/material.dart';

class LightWidget extends StatefulWidget {
  const LightWidget({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  State<LightWidget> createState() => _LightWidgetState();
}

class _LightWidgetState extends State<LightWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(60)),
        height: 100,
        width: 100,
      ),
    );
  }
}
