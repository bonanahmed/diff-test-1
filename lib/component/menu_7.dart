import 'package:flutter/material.dart';
import 'package:wgs_tes/component/button_menu_7.dart';

import 'card_menu_7.dart';

class Menu7 extends StatelessWidget {
  Menu7({Key? key}) : super(key: key);
  final List _dataCard7 = [
    {
      "title": "Infaq Yatim: Kebahagiaan untuk 500 anak-anak Yatim",
      "image":
          "https://imgix.kitabisa.com/master/b380d3ff-8748-11ec-a3fc-52b309a993ab_FDC998DEA99A7DAD.png",
      "time": "9 menit yang lalu",
      "org": "Yuk Peduli",
      "progress": 0.54,
      "nominal": "Rp.35.232.032"
    },
    {
      "title": "Infaq Yatim: Kebahagiaan untuk 500 anak-anak Yatim",
      "image":
          "https://imgix.kitabisa.com/13b2764f-ef86-494c-b73a-d82842b281b4.jpg?ar=16:9&w=214&auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
      "time": "9 menit yang lalu",
      "org": "Yuk Peduli",
      "progress": 0.13,
      "nominal": "Rp.35.232.032"
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
            "Pilihan Kategori Favoritmu",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ButtonMenu7(
                  iconImage: "src/img/icon/icon-bencana.png",
                  iconName: "Bencana Alam",
                ),
                ButtonMenu7(
                  iconImage: "src/img/icon/icon-balita.png",
                  iconName: "Balita & Anak Sakit",
                ),
                ButtonMenu7(
                  iconImage: "src/img/icon/icon-medis.png",
                  iconName: "Bantuann Medis & Kesehatan",
                ),
                ButtonMenu7(
                  iconImage: "src/img/icon/icon-list.png",
                  iconName: "Lainnya",
                ),
              ],
            )),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: CardMenu7(
            dataCard7: _dataCard7,
          ),
        )
      ],
    );
  }
}
