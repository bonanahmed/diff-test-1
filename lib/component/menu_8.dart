import 'package:flutter/material.dart';
import 'package:wgs_tes/component/icon_button_8.dart';

class Menu8 extends StatelessWidget {
  const Menu8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          alignment: AlignmentDirectional.center,
          child: const Text(
            "Ramadhan, Waktunya Cari Berkah!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          alignment: AlignmentDirectional.center,
          child: const Text(
            "Maksimalkan ibadah di bulan suci dengan berdonasi mulai Rp1.000 ke galang dana yang paling dekat di hati.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.w
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              // width: MediaQuery.of(context).size.width * 0.45,
              child: InkWell(
            onTap: () {},
            child: Image.asset(
              "src/img/icon/btn-google-play.png",
              scale: 1.5,
            ),
          )),
          SizedBox(
              // width: MediaQuery.of(context).size.width * 0.45,
              child: InkWell(
            onTap: () {},
            child: Image.asset(
              "src/img/icon/btn-app-store.png",
              scale: 1.5,
            ),
          )),
        ]),
        Container(
          width: 480,
          // color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          alignment: AlignmentDirectional.center,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              child: const Text(
                "Tentang Kitabisa",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              "|",
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: const Text(
                "Syarat & Ketentuan",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              "|",
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: const Text(
                "Pusat Bantuan",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconButton8(
                iconImage: "src/img/icon/icon-socmed-fb.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-socmed-twitter.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-socmed-instagram.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-socmed-youtube.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-socmed-tiktok.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-linkedin.svg",
              ),
              IconButton8(
                iconImage: "src/img/icon/icon-techinasia.svg",
              ),
            ],
          ),
        ),
        const Divider(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: const Text("Copyright © 2022 Kitabisa. All Rights Reserved",
              style: TextStyle(color: Colors.grey)),
        )
      ],
    );
  }
}
