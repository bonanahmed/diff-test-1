import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconButton8 extends StatelessWidget {
  const IconButton8({Key? key, required this.iconImage}) : super(key: key);
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SvgPicture.asset(
        iconImage,
        color: const Color.fromARGB(255, 69, 69, 69),
        height: 15,
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: const Color.fromARGB(255, 227, 227, 227), // <-- Button color
        onPrimary: Colors.red, // <-- Splash color
      ),
    );
  }
}
