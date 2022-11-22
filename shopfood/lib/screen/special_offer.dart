import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});
  static const routeName = "/special";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          const Text(
            'Special offer on\nyour first order -\n50% off',
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Colors.black, fontSize: 25),
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
                    'assets/images/pizza.png',
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
                        'Favourite pizza',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal),
                      ),
                      Text(
                        '\$22',
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
                    'assets/images/burger.png',
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
                        'Jack Burger',
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
                    'assets/images/bling',
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
                    children: const [],
                  ))
            ]),
          ),
        ],
      ),
    ));
  }
}
