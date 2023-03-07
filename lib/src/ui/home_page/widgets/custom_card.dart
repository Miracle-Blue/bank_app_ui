import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card_gradient.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 230,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              width: 2,
              color: const Color(0xFF383467),
            ),
          ),
          child: Stack(
            children: [
              const CardGradient(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                  left: 30,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '\$1.924,35',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/icons/nfc_ic.svg'),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '5489 7654 3210 7894',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                '04/24',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, .7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/mastercard_ic.svg'),
                          ],
                        )
                      ],
                    )
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
