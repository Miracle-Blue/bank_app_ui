import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CardGradient extends StatelessWidget {
  const CardGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            backgroundBlendMode: BlendMode.screen,
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF781CFF),
                Color(0x00000000),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            backgroundBlendMode: BlendMode.screen,
            gradient: const LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              colors: [
                Color(0xffD41E7F),
                Color(0x00000000),
              ],
            ),
          ),
        ),
        ClipRect(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 4.0,
              sigmaY: 4.0,
            ),
            child: const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
