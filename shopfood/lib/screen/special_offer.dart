import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './foodlist.dart';
import './main_screen.dart';
import '../widget/navbar.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});
  static const routeName = "/special";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            NavBar(navigatorRoute: const MainScreen()),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Special offer on\nyour first order -\n50% off',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 25,
                    height: 1.2),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FoodList()));
              },
              child: SvgPicture.asset(
                'icons/icons_arrow_up.svg',
                height: 22.13,
                width: 12.65,
              ),
            ),
            const SizedBox(
              height: 18.88,
            ),
            Container(
              width: 210,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(167, 226, 191, 1),
                      blurRadius: 30,
                      offset: Offset(-10, 10))
                ],
              ),
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                  left: -57,
                  top: 12,
                  child: Container(
                    height: 102,
                    width: 129,
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
                // image
                Positioned(
                    right: -115,
                    top: -115,
                    child: Image.asset(
                      'images/pizza.png',
                      width: 350,
                      height: 350,
                    )),
                // bottom text

                Positioned(
                    left: 13,
                    bottom: 10,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Favourite pizza',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          '\$22',
                          style: TextStyle(
                              fontSize: 20,
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
                      'images/burger.png',
                      width: 350,
                      height: 350,
                    ))
                // bottom text
                ,
                Positioned(
                    left: 13,
                    bottom: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Jack burger',
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
                      'images/bling.png',
                      width: 350,
                      height: 350,
                    ))
                // bottom text
                ,
                Positioned(
                    left: 13,
                    bottom: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Cake',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          '\$8',
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
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('icons/home.svg'),
                  SvgPicture.asset('icons/heart.svg'),
                  SvgPicture.asset('icons/cart.svg'),
                  SvgPicture.asset('icons/user.svg')
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
