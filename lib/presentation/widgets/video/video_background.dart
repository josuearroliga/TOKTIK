import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  const VideoBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black87],
            begin: Alignment(0.8, 0.5),
            end: Alignment(0.8, 0.9),
            // end: Alignment(x, y)
          ),
        ),
      ),
    );
  }
}
