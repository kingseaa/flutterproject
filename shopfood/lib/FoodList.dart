import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'BottomNav.dart';
import 'Appbar.dart';
import 'network.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('icons/back.svg'),
                  Text('BACK'),
                ],
              ),

              SvgPicture.asset('icons/search.svg'),

              //   InkWell(onTap: () {
              // },child: SvgPicture.asset('assets/icons/search1.svg', height: 10, width: 10,fit: BoxFit.scaleDown,))
            ],
          )),
          Text('Salads'),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: FutureBuilder(
              future: fetchFoods(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 30, left: 30),
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
                          ),
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
          ),
        ],
      ),
    );
  }
}


// Stack(
//                       clipBehavior: Clip.none,
//                       children: <Widget>[
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Colors.black45,
//                                 offset: Offset(2, 2),
//                                 blurRadius: 4,
//                               ),
//                             ],
//                           ),
//                           margin: const EdgeInsets.only(left: 38, bottom: 22),
//                           width: 317,
//                           height: 153,
//                           child: Container(
//                             margin: const EdgeInsets.only(left: 28, top: 10),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     width: 120,
//                                     child: Text(
//                                       snapshot.data[index].name,
//                                       style: const TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     )),
//                                 Container(
//                                     width: 140,
//                                     margin: const EdgeInsets.only(top: 10),
//                                     child: Text(snapshot.data[index].desc,
//                                         style: const TextStyle(
//                                             fontSize: 8,
//                                             fontWeight: FontWeight.w400,
//                                             height: 1.6))),
//                                 Container(
//                                     margin: const EdgeInsets.only(top: 2),
//                                     child:
//                                         Text('${snapshot.data[index].cal} CAL',
//                                             style: const TextStyle(
//                                               fontSize: 6,
//                                               fontWeight: FontWeight.w700,
//                                             ))),
//                                 Container(
//                                     margin: const EdgeInsets.only(top: 10),
//                                     child: Text(
//                                         '\$ ${snapshot.data[index].price}',
//                                         style: const TextStyle(
//                                             fontSize: 23,
//                                             fontWeight: FontWeight.w700,
//                                             color: Color(0xff59C885)))),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 15,
//                           left: 192,
//                           child: ClipOval(
//                             child: Container(
//                               width: 95,
//                               height: 95,
//                               color: const Color(0xffF8FFFB),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: -5,
//                           left: 233,
//                           child: ClipOval(
//                             child: Container(
//                               child: Image.asset(snapshot.data[index].img),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),