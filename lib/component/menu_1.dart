// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Menu1 extends StatelessWidget {
  const Menu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          child: const Text(
            "Ingin Menggalang Dana?",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
          child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size.fromHeight(50)),
              onPressed: () {},
              child: const Text(
                "Galang Dana Sekarang",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size.fromHeight(50)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat_bubble_outline,
                      color: Theme.of(context).primaryColor),
                  Text(
                    "  Tanya Tentang Galang Dana",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
