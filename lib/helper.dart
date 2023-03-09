import 'package:flutter/material.dart';

import 'src/model/cryto_model.dart';

class Task9Homepage extends StatefulWidget {
  static const String id = "home_page9";
  const Task9Homepage({super.key});

  @override
  State<Task9Homepage> createState() => _Task9HomepageState();
}

class _Task9HomepageState extends State<Task9Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B0A7D),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          //katta column
          child: Column(
            children: [
              // 4 ta button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              const Color(0xff00FFC2).withOpacity(.1),
                              const Color(0xff00FFC2).withOpacity(.5),
                            ],
                          ),
                        ),
                        child: const Image(
                          color: Color(0xff00B2FF),
                          image: AssetImage("assets/images/Vector (15).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Analyze",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              const Color(0xff00FFC2).withOpacity(.1),
                              const Color(0xff00FFC2).withOpacity(.5),
                            ],
                          ),
                        ),
                        child: const Image(
                          color: Color(0xff00B2FF),
                          image: AssetImage("assets/images/Vector (16).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Analyze",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              const Color(0xff00FFC2).withOpacity(.1),
                              const Color(0xff00FFC2).withOpacity(.5),
                            ],
                          ),
                        ),
                        child: const Image(
                          color: Color(0xff00B2FF),
                          image: AssetImage("assets/images/Vector (17).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Analyze",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              const Color(0xff00FFC2).withOpacity(.1),
                              const Color(0xff00FFC2).withOpacity(.5),
                            ],
                          ),
                        ),
                        child: const Image(
                          color: Color(0xff00B2FF),
                          image: AssetImage("assets/images/Vector (18).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Analyze",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffB9B2C4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Expanded(child: Requiredpage()),
            ],
          ),
        ),
      ),
    );
  }
}

class Requiredpage extends StatefulWidget {
  const Requiredpage({super.key});
  @override
  State<Requiredpage> createState() => _RequiredpageState();
}

class _RequiredpageState extends State<Requiredpage> {
  final List<Crypto> _list = [
    Crypto(data: "13 jan 22", image: "assets/images/Logo.png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: "assets/images/Logo (1).png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: "assets/images/Logo (2).png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: "assets/images/Logo (3).png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: "assets/images/Logo (1).png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: "assets/images/Logo (2).png", name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _list.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemBuilder: (context, index) {
        final user1 = _list[index];
        return SizedBox(
          width: double.infinity,
          height: 55,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user1.name!,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  user1.sena!,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user1.data!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  user1.time!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            leading: Image(
              image: AssetImage(user1.image!),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
