import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('icons/back.svg', fit: BoxFit.scaleDown),
            Text('BACK')
          ],
        ),
        SvgPicture.asset('icons/search1.svg')
      ],
    );
    // return Row(
    //     backgroundColor: Colors.transparent,
    //     bottomOpacity: 0.0,
    //     elevation: 0.0,
    //     leading: SvgPicture.asset('icons/back.svg', fit: BoxFit.scaleDown),
    //     title: const Text(
    //       'BACK 123',
    //       style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    //     ),
    //     actions: <Widget>[
    //       IconButton(
    //         onPressed: () {},
    //         icon: Container(
    //           height: 30,
    //           width: 30,
    //           padding: EdgeInsets.all(12),
    //           decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.circular(50)),
    //             // padding: const EdgeInsets.all(12),
    //             child: SvgPicture.asset('icons/search1.svg')),
    //       ),
    //     ],
    //   );
  }
}
