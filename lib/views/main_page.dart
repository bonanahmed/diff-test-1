// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wgs_tes/views/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _listPage = [
    HomePage(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: SizedBox(
            width: 480,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 35,
                    child: Image(
                        image: AssetImage(
                            "src/img/icon/logogram__ktbs_white.png"))),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: 35,
                    width: 420,
                    child: TextField(
                      onTap: () {
                        // Get.to(() => SearchPage());
                      },
                      decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          hintText: 'Coba cari "Tolong Menolong"',
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.25),
                          hintStyle: TextStyle(color: Colors.white),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )),
      body:
          Center(child: SizedBox(width: 480, child: _listPage[_currentIndex])),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: 480,
            child: BottomNavigationBar(
              elevation: 0,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              selectedIconTheme: IconThemeData(
                color: Theme.of(context).primaryColor,
              ),
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey,
              currentIndex:
                  _currentIndex, // this will be set when a new tab is tapped
              onTap: (currentIndex) {
                setState(() {
                  _currentIndex = currentIndex;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("src/img/icon/home_navbar_active.svg",
                      color: _currentIndex == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      height: 25,
                      semanticsLabel: 'Navbar'),
                  label: 'Donasi',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("src/img/icon/plus_navbar.svg",
                      color: _currentIndex == 1
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      height: 25,
                      semanticsLabel: 'Navbar1'),
                  label: 'Galang Dana',
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("src/img/icon/donasi_navbar.svg",
                        color: _currentIndex == 2
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        height: 25,
                        semanticsLabel: 'Navbar2'),
                    label: 'Donasi Saya'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("src/img/icon/inbox_navbar.svg",
                        color: _currentIndex == 3
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        height: 25,
                        semanticsLabel: 'Navbar3'),
                    label: 'Inbox'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("src/img/icon/account_navbar.svg",
                        color: _currentIndex == 4
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        height: 25,
                        semanticsLabel: 'Navbar4'),
                    label: 'Akun'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
