import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 38),
          child: Column(
            children: [
              // Begin Input Search
              Container(
                height: 54,
                width: 338,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(234, 255, 245, 1),
                  borderRadius: BorderRadius.circular(118),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/icons_search.svg',
                        height: 19,
                        width: 19,
                      ),
                    ],
                  ),
                ),
              ),
              // End Input Search
              const SizedBox(
                height: 30,
              ),
              // Begin Menu category
              SizedBox(
                width: 338,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Align(
                          alignment: Alignment.center, child: Text('icon err')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/icons_hamburger.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/icons_salad.svg',
                          width: 37,
                          height: 37,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 77,
                      width: 77,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(246, 246, 246, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/icons_pizza.svg',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // End Menu category

              // Begin special offer
              const SizedBox(
                height: 68,
              ),
              // Start special offer
              SizedBox(
                  width: 338,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/special");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Special Offer',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/icons/icons_arrow.svg',
                          height: 27.66,
                          width: 15.81,
                          color: const Color.fromRGBO(0, 129, 50, 1),
                        )
                      ],
                    ),
                  )),
              // End special offer

              const SizedBox(
                height: 60,
              ),
              // Begin Item
              Column(
                children: [
                  Container(
                    width: 338,
                    height: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(167, 226, 191, 1),
                            blurRadius: 30,
                            offset: Offset(0, 0))
                      ],
                    ),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Positioned(
                        left: -77,
                        top: 23,
                        child: Container(
                          height: 135,
                          width: 213,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.6, 0.1),
                                  colors: [
                                    Color.fromRGBO(60, 192, 112, 1),
                                    Color.fromRGBO(48, 255, 130, 1)
                                  ]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '50%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                Text(
                                  'for the First\norder',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ]),
                        ),
                      ),
                      // image
                      Positioned(
                          right: -90,
                          top: -90,
                          child: Image.asset(
                            'assets/images/nicoise_salad.png',
                            width: 350,
                            height: 350,
                          ))
                      // bottom text
                      ,
                      Positioned(
                          left: 13,
                          bottom: 16,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Nicoise Salad',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                '\$10',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(89, 200, 133, 1)),
                              )
                            ],
                          ))
                    ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 338,
                    height: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(167, 226, 191, 1),
                            blurRadius: 30,
                            offset: Offset(0, 0))
                      ],
                    ),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Positioned(
                        left: -77,
                        top: 23,
                        child: Container(
                          height: 135,
                          width: 213,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.6, 0.1),
                                  colors: [
                                    Color.fromRGBO(60, 192, 112, 1),
                                    Color.fromRGBO(48, 255, 130, 1)
                                  ]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '50%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                Text(
                                  'for the First\norder',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ]),
                        ),
                      ),
                      // image
                      Positioned(
                          right: -90,
                          top: -90,
                          child: Image.asset(
                            'assets/images/nicoise_salad.png',
                            width: 350,
                            height: 350,
                          ))
                      // bottom text
                      ,
                      Positioned(
                          left: 13,
                          bottom: 16,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Nicoise Salad',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                '\$10',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(89, 200, 133, 1)),
                              )
                            ],
                          ))
                    ]),
                  ),
                ],
              ),
              // End Item
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
