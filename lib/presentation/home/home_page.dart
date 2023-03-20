import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF212630),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/img/more.svg",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "BTC/USDT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    width: 64,
                    height: 24,
                    decoration: BoxDecoration(
                      color: const Color(0xFF20C997).withOpacity(0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      '+2.38',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color(0xFF20C997),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/img/filter.svg",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/img/dots.svg",
                  ),
                ],

                // BTC/USDT
              ),
              const SizedBox15Widget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const ButtonWidget(
                          colorButton: Color(0xFF333A47),
                          name: '43,805.35',
                          colorText: Colors.white,
                        ),
                        const SizedBox15Widget(),
                        ButtonWidget(
                          name: 'Amount (BTC)',
                          colorText: Colors.white.withOpacity(0.4),
                          colorButton: const Color(0xFF333A47),
                        ),
                        const SizedBox15Widget(),
                        Image.asset(
                          "assets/img/lines.png",
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ButtonWidget(
                          colorButton: const Color(0xFF333A47),
                          name: 'Total (USDT)',
                          colorText: Colors.white.withOpacity(0.4),
                        ),
                        const SizedBox15Widget(),
                        Row(
                          children: [
                            const Text(
                              'Avbl',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: Color(0xFF7D8696),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '1 000.00 USDT',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Hi');
                              },
                              child: Container(
                                height: 14,
                                width: 14,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF7D8696),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const ButtonWidget(
                          name: 'Total (USDT)',
                          colorText: Colors.white,
                          colorButton: Color(0xFF20C997),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/img/graph.png",
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF333A47),
                                    borderRadius: BorderRadius.circular(6),
                                  ),

                                child: Row(
                                  children: const [
                                    Text(
                                      '0.01',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/img/red green.svg")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox15Widget(),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String name;
  final Color colorText;
  final Color colorButton;
  const ButtonWidget(
      {Key? key,
      required this.name,
      required this.colorText,
      required this.colorButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // height: 42,
      decoration: BoxDecoration(
        color: colorButton,
        //color: const Color(0xFF333A47),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.remove,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          const Spacer(),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: colorText,
              //color: Colors.white,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class SizedBox15Widget extends StatelessWidget {
  const SizedBox15Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}
