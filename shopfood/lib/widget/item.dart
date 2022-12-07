import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  String? name;
  String? price;
  String? discount;
  String? img;

  ItemWidget(this.name, this.img, this.price, this.discount);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 245,
      margin: const EdgeInsets.symmetric(vertical: 20),
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                '$discount %',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              const Text(
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
              'assets$img',
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
              children: [
                Text(
                  '$name',
                  style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(89, 200, 133, 1)),
                )
              ],
            ))
      ]),
    );
  }
}
