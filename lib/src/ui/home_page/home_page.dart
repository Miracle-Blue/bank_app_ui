import 'package:flutter/material.dart';

import 'widgets/custom_card.dart';
import 'widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000040),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Header(),
                    const CustomCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
