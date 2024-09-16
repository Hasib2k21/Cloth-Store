import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularIconButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF4F4F4),
      ),
      width: 40,
      height: 40,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }
}


class CircularIconButtonFav extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularIconButtonFav({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF4F4F4),
      ),
      width: 40,
      height: 40,
      child: IconButton(
        icon: const Icon(Icons.favorite_outline_sharp, size: 24, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }
}

