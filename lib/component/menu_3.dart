import 'package:flutter/material.dart';
import 'package:wgs_tes/component/card_menu_3.dart';

class Menu3 extends StatelessWidget {
  Menu3({Key? key}) : super(key: key);
  final List _dataCard3 = [
    {
      "title": "Anak Tukang Becak Ditabrak, KOMA & Kritis di PICU!",
      "image":
          "https://imgix.kitabisa.com/cd5c534b-88dc-4a48-906e-0679757daaf0.jpg?ar=16:9&w=280&auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
      "dueDate": "7 hari lagi",
      "nominal": "Rp. 38.400.000",
      "progress": 0.7
    },
    {
      "title": "Anak Tukang Becak Ditabrak, KOMA & Kritis di PICU!",
      "image":
          "https://imgix.kitabisa.com/cd5c534b-88dc-4a48-906e-0679757daaf0.jpg?ar=16:9&w=280&auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
      "nominal": "Rp. 38.400.000",
      "dueDate": "7 hari lagi",
      "progress": 0.5
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          child: const Text(
            "Penggalangan Dana Mendesak",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: CardMenu3(dataCard3: _dataCard3),
        )
      ],
    );
  }
}
