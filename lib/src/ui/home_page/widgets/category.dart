import 'package:bank_app/src/common/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 80 / 100,
      ),
      delegate: SliverChildListDelegate(
        const [
          CategoryItem(
            gradientOne: [Color(0xff00FFC2), Color(0x00000000)],
            gradientTwo: [Color(0xff00B2FF), Color(0x00000000)],
            image: AppImages.analyzeSVG,
            name: "Analyze",
          ),
          CategoryItem(
            gradientOne: [Color(0xFF95FF0F), Color(0x00000000)],
            gradientTwo: [Color(0xFF00FFC2), Color(0x00000000)],
            image: AppImages.calendarSVG,
            name: "Calendar",
          ),
          CategoryItem(
            gradientOne: [Color(0xFFFFF500), Color(0x00000000)],
            gradientTwo: [Color(0xFF95FF0F), Color(0x00000000)],
            image: AppImages.documentSVG,
            name: "Document",
          ),
          CategoryItem(
            gradientOne: [Color(0xFFFF8A00), Color(0x00000000)],
            gradientTwo: [Color(0xFFFFF500), Color(0x00000000)],
            image: AppImages.collectSVG,
            name: "Collect",
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;
  final List<Color> gradientOne;
  final List<Color> gradientTwo;

  const CategoryItem({
    required this.gradientOne,
    required this.gradientTwo,
    required this.image,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: gradientOne,
                ),
              ),
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 3, color: const Color(0xFF2F2D63)),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                  colors: gradientTwo,
                ),
              ),
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: gradientOne,
                ),
              ),
            ),
            SvgPicture.asset(
              image,
              width: 32,
              height: 32,
              colorFilter: const ColorFilter.matrix([1, 0, 0, 0, 255, 0, 1, 0, 0, 255, 0, 0, 1, 0, 255, 0, 0, 0, 1, 0]),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
