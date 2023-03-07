import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final Widget? child;

  const CustomNavigationBar({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xFF2F2D63),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              width: 2,
              color: const Color(0xFF383467),
            ),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF20204D),
                Color(0xFF1D1D55),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: child,
          ),
        ),
      ),
    );
  }
}
