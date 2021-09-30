import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Icon icon;
  final void Function() onPressed;
  final double iconSize;
  CircleButton({
    required this.icon,
    required this.onPressed,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: icon,
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
