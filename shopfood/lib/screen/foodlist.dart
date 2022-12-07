import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopfood/screen/special_offer.dart';

import '../api/foodModel.dart';
import '../api/network.dart';
import '../widget/navbar.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});
  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  final fetchFoods _foods = fetchFoods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                  left: 39, right: 39, top: 30, bottom: 30),
              child: NavBar(
                navigatorRoute: const SpecialOffer(),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 39),
                child: const Text('Salads',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
              ),
            ],
          ),
          const SizedBox(
            height: 39,
          ),
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 239,
                  color: const Color(0xffEAFFF2),
                ),
              ),
              SizedBox(
                height: 500,
                child: FutureBuilder<List<Food>>(
                  future: _foods.fetchFoodss(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.only(bottom: 30, left: 30),
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
                                  margin:
                                      const EdgeInsets.only(left: 28, top: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              width: 160,
                                              child: Text(
                                                  snapshot.data[index].name,
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ))),
                                          SizedBox(
                                              width: 140,
                                              child: Text(
                                                  snapshot.data[index].desc,
                                                  style: const TextStyle(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.6))),
                                          Text(
                                              '${snapshot.data[index].cal} CAL',
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
                                  left: 212,
                                  child: Image.asset(snapshot.data[index].img))
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
          SizedBox(
            height: 50,
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
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 1.002415, size.height * 0.006501837);
    path.cubicTo(
        size.width * 0.9394203,
        size.height * 0.00008262400,
        size.width * 0.8618237,
        size.height * -0.002000750,
        size.width * 0.7663382,
        size.height * 0.002145175);
    path.cubicTo(
        size.width * 0.5110459,
        size.height * 0.01323000,
        size.width * 0.3128019,
        size.height * 0.3151625,
        size.width * 0.3128019,
        size.height * 0.3151625);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 1.002415, size.height);
    path.lineTo(size.width * 1.002415, size.height * 0.006501837);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = const Color(0xffEAFFF2).withOpacity(1.0);
// canvas.drawPath(path,paint_fill);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
