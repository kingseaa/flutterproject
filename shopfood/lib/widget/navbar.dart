import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                child: Text('BACK')),
          ],
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black38,
                    blurRadius: 4,
                  )
                ]),
            child: SvgPicture.asset('icons/search.svg')),
      ],
    );
  }
}
