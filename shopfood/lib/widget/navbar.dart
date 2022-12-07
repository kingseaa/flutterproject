import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopfood/screen/foodlist.dart';

import '../api/foodModel.dart';
import '../api/network.dart';

class NavBar extends StatelessWidget {
  Widget navigatorRoute;
  NavBar({required this.navigatorRoute});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
                onTap: () => {
                      print('click!'),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  navigatorRoute // MainScreen()
                              ))
                    },
                child: SvgPicture.asset('icons/back.svg')),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 21),
                child: const Text('BACK')),
          ],
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black38,
                    blurRadius: 4,
                  )
                ]),
            child: InkWell(
                onTap: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                child: SvgPicture.asset('icons/icons_search.svg'))),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  fetchFoods _foods = fetchFoods();

  @override
  Widget buildResults(BuildContext context) {
    // List<String> matchQuery = [];
    // for (var food in SearchTerms) {
    //   if (food.toLowerCase().contains(query.toLowerCase())) {
    //     matchQuery.add(food);
    //   }
    // }
    // return ListView.builder(
    //   itemCount: matchQuery.length,
    //   itemBuilder: (context, index) {
    //     var result = matchQuery[index];
    //     return ListTile(
    //       title: Text(result),
    //     );
    //   },
    // );
    return SizedBox(
      height: 656,
      child: FutureBuilder<List<Food>>(
        future: _foods.fetchFoodss(query: query),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 30, left: 30),
                      width: 317,
                      height: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 28, top: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 160,
                                    child: Text(snapshot.data[index].name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ))),
                                SizedBox(
                                    width: 140,
                                    child: Text(snapshot.data[index].desc,
                                        style: const TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            height: 1.6))),
                                Text('${snapshot.data[index].cal} CAL',
                                    style: const TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Positioned(
                                  top: 30,
                                  child: Text(
                                      '\$ ${snapshot.data[index].price}',
                                      style: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff59C885))),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 15,
                              left: 192,
                              child: ClipOval(
                                child: Container(
                                  width: 95,
                                  height: 95,
                                  color: const Color(0xffF8FFFB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 212, child: Image.asset(snapshot.data[index].img))
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('not found data'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox(
      height: 656,
      child: FutureBuilder<List<Food>>(
        future: _foods.fetchFoodss(query: query),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 30, left: 30),
                      width: 317,
                      height: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 28, top: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: 160,
                                    child: Text(snapshot.data[index].name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ))),
                                SizedBox(
                                    width: 140,
                                    child: Text(snapshot.data[index].desc,
                                        style: const TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            height: 1.6))),
                                Text('${snapshot.data[index].cal} CAL',
                                    style: const TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Positioned(
                                  top: 30,
                                  child: Text(
                                      '\$ ${snapshot.data[index].price}',
                                      style: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff59C885))),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 15,
                              left: 192,
                              child: ClipOval(
                                child: Container(
                                  width: 95,
                                  height: 95,
                                  color: const Color(0xffF8FFFB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 212, child: Image.asset(snapshot.data[index].img))
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('not found data'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
