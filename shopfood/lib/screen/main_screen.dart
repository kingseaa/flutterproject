//declare packages
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../api/listfoods.dart';
import '../widget/item.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/mainscreen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      const Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}

class _MainScreenState extends State<MainScreen> {
  ListFoods foods = ListFoods();

  List<ListFoods> ulist = [];
  List<ListFoods> userLists = [];
  final _debouncer = Debouncer();

  @override
  void initState() {
    super.initState();
    foods.getAllulistList().then((subjectFromServer) {
      setState(() {
        ulist = subjectFromServer;
        userLists = ulist;
      });
    });
  }

  Widget MenuIcon() {
    return Container(
      height: 21,
      width: 21,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.6, 0.1),
            colors: [
              Color.fromRGBO(60, 192, 112, 1),
              Color.fromRGBO(48, 255, 130, 1)
            ]),
      ),
    );
  }

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
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          onChanged: (string) {
                            print('$string string');
                            _debouncer.run(() {
                              setState(() {
                                userLists = ulist
                                    .where(
                                      (u) => (u.name!.toLowerCase().contains(
                                            string.toLowerCase(),
                                          )),
                                    )
                                    .toList();
                              });
                            });
                          },
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [MenuIcon(), MenuIcon()],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [MenuIcon(), MenuIcon()],
                          ),
                        ],
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
                      Navigator.pushNamed(context, '/special');
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
              SizedBox(
                  height: 500,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        userLists[index].name,
                        userLists[index].img,
                        userLists[index].price,
                        userLists[index].discount,
                      );
                    },
                    itemCount: userLists.length,
                  )),
              // End Item
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
