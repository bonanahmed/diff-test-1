import 'package:flutter/material.dart';

class ButtonMenu2 extends StatelessWidget {
  const ButtonMenu2({Key? key, required this.iconName, required this.iconImage})
      : super(key: key);
  final String iconImage;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          iconImage,
          height: 50,
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(iconName))
      ],
    );
  }
}
