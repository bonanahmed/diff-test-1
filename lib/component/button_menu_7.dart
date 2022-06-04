import 'package:flutter/material.dart';

class ButtonMenu7 extends StatelessWidget {
  const ButtonMenu7({Key? key, required this.iconName, required this.iconImage})
      : super(key: key);
  final String iconImage;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconImage,
          height: 35,
        ),
        Container(
            alignment: AlignmentDirectional.center,
            width: 480 * 0.23,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              iconName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
              ),
            ))
      ],
    );
  }
}
