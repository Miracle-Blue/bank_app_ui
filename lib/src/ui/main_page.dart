import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page/home_page.dart';
import 'widgets/custom_navigation_bar.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          HomePage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomNavigationBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.home,
                  size: 28,
                  color: Color(0xFF9491AE),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/bookmark_ic.svg'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Image(
                  image: AssetImage('assets/images/im_main_add.png'),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/notification_ic.svg'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/profile_ic.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
