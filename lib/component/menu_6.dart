import 'package:flutter/material.dart';
import 'package:wgs_tes/component/card_menu_6.dart';

class Menu6 extends StatelessWidget {
  Menu6({Key? key}) : super(key: key);
  final List _dataCard3 = [
    {
      "user": "Djaya Baya",
      "image":
          "https://img.kitabisa.cc/size/150x150/109804b7-7d3b-4914-b195-c7cdac4a5b85.jpg",
      "article": "Anak Tukang Becak Ditabrak...",
      "time": "9 menit yang lalu",
      "text": "Aamiin",
      "amen": "5 orang"
    },
    {
      "user": "Anonim",
      "article": "Anak Tukang Becak Ditabrak...",
      "time": "9 menit yang lalu",
      "text": "GBU",
      "amen": "5 orang",
    },
    "etc"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          child: const Text(
            "Doa-doa #OrangBaik",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: CardMenu6(dataCard6: _dataCard3),
        )
      ],
    );
  }
}
