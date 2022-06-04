import 'package:flutter/material.dart';
import 'package:wgs_tes/component/button_menu_2.dart';

class Menu2 extends StatefulWidget {
  const Menu2({Key? key}) : super(key: key);

  @override
  State<Menu2> createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ButtonMenu2(
          iconImage:
              "https://firebase-kanvas.imgix.net/tile_homepage/icon-donasi.png?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&dpr=1",
          iconName: "Donasi",
        ),
        ButtonMenu2(
          iconImage:
              "https://firebase-kanvas.imgix.net/tile_homepage/icon-zakat.png?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&dpr=1",
          iconName: "Zakat",
        ),
        ButtonMenu2(
          iconImage:
              "https://firebase-kanvas.imgix.net/tile_homepage/menu_galang_dana.png?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&h=150&w=150&dpr=1",
          iconName: "Galang Dana",
        ),
      ],
    );
  }
}
