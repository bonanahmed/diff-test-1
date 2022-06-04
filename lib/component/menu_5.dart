import 'package:flutter/material.dart';
import 'package:wgs_tes/component/card_menu_5.dart';

class Menu5 extends StatelessWidget {
  Menu5({Key? key}) : super(key: key);
  final List _dataCard3 = [
    {
      "title": "Anak Tukang Becak Ditabrak, KOMA & Kritis di PICU!",
      "image":
          "https://imgix.kitabisa.com/8b953443-484d-4437-8b9a-4cf0846a6d32.jpg",
      "org": "Aksi Cepat Tanggap",
      "nominal": "Rp. 38.400.000",
      "progress": 0.6
    },
    {
      "title": "Anak Tukang Becak Ditabrak, KOMA & Kritis di PICU!",
      "image":
          "https://imgix.kitabisa.com/cd5c534b-88dc-4a48-906e-0679757daaf0.jpg?ar=16:9&w=280&auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
      "nominal": "Rp. 38.400.000",
      "org": "Aksi Cepat Tanggap",
      "progress": 0.3
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
            "Pilihan Kitabisa",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: CardMenu5(dataCard5: _dataCard3),
        )
      ],
    );
  }
}
