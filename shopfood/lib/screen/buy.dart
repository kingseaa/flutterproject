import 'package:flutter/material.dart';

class BuyWidget extends StatelessWidget {
  const BuyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 338,
          height: 320,
          decoration: const BoxDecoration(),
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              left: 38,
              top: 136,
              child: Container(
                width: 338,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 129, 50, 0.27),
                        blurRadius: 15,
                        offset: Offset(0, 0))
                  ],
                ),
              ),
            ),
            Positioned(
              left: 397,
              top: 136,
              child: Container(
                width: 338,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 129, 50, 0.27),
                        blurRadius: 15,
                        offset: Offset(0, 0))
                  ],
                ),
              ),
            ),
            Positioned(
              left: -5,
              top: 382,
              child: Container(
                height: 102.04,
                width: 130.64,
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
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                      Text(
                        'for the First\norder',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 11),
                      ),
                    ]),
              ),
            ),
            Positioned(
                left: 10,
                top: 270,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/Vector.png',
                    width: 15.81,
                    height: 27.66,
                  ),
                ))
            // bottom text
            ,
            Positioned(
                left: 81,
                top: 174,
                child: Image.asset(
                  'images/burger.png',
                  width: 242,
                  height: 242,
                ))
            // bottom text
            ,
            Positioned(
                left: 41,
                // bottom: 16,
                top: 521,
                // right: 41,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Jack Burger',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                )),
            Positioned(
                left: 41,
                top: 562,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Total price',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ])),
            Positioned(
                left: 41,
                top: 585,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '\$10',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(89, 200, 133, 1)),
                      )
                    ])),
            Positioned(
                left: 30.5,
                top: 460,
                child: Image.asset(
                  'images/background.png',
                  width: 414.5,
                  height: 454,
                )),
            Positioned(
              left: 166,
              top: 598,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 73,
                width: 258,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 227, 80, 1),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(134, 230, 171, 1),
                          blurRadius: 30,
                          offset: Offset(0, 0)),
                    ]),
                child: Row(children: [
                  Row(
                    children: [
                      const Text(
                        'BUY NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      Image.asset(
                        'images/build.png',
                        width: 36,
                        height: 36,
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Positioned(
                left: 38,
                top: 696,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Our regular two-patty burger, layered with four \npieces of crispy, sweet applewood-smoked \nbacon.',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ])),
            Positioned(
                left: 65,
                top: 770,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Text(
                                '910',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                'CALORIESC',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                '41',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                'CARBS (G)',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                '45',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                'TATAL FAT (G)',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                '698',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                'SODIUM (MC)',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ])))
          ])),
    );
  }
}
