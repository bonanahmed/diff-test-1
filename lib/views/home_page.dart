// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wgs_tes/component/Menu_1.dart';
import 'package:wgs_tes/component/banner.dart';
import 'package:wgs_tes/component/menu_2.dart';
import 'package:wgs_tes/component/menu_3.dart';
import 'package:wgs_tes/component/menu_4.dart';
import 'package:wgs_tes/component/menu_5.dart';
import 'package:wgs_tes/component/menu_6.dart';
import 'package:wgs_tes/component/menu_7.dart';
import 'package:wgs_tes/component/menu_8.dart';

import '../component/banner_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          color: Colors.white,
          child: const Menu1()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const ViewBanner()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Menu2()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Menu3()),
      Container(
          width: 480,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const ViewBanner2()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          color: Colors.white,
          child: Menu4()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Menu5()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          color: Colors.white,
          child: Menu6()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          color: Colors.white,
          child: Menu7()),
      Container(
          padding: const EdgeInsets.all(15),
          width: 480,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          color: Colors.white,
          child: const Menu8()),
    ]);
  }
}
