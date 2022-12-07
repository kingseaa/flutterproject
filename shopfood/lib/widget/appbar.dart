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
            const Text('BACK')
          ],
        ),
        SvgPicture.asset('icons/search1.svg')
      ],
    );
  }
}
