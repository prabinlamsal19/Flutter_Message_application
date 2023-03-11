import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final String bubbleText;
  const Bubble({required this.bubbleText});

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
                  text: bubbleText,
                  color: Color(0xFF1B97F3),
                  tail: false,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                );
  }
}