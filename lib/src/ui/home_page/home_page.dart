import 'package:bank_app/src/ui/home_page/widgets/category.dart';
import 'package:bank_app/src/ui/home_page/widgets/transaction.dart';
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
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
            bottom: 90,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  const [
                    Header(),
                    CustomCard(),
                  ],
                ),
              ),
              const CategoryView(),
              const Transaction(),
            ],
          ),
        ),
      ),
    );
  }
}
