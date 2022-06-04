// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ViewBanner extends StatefulWidget {
  const ViewBanner({
    Key? key,
  }) : super(key: key);

  @override
  _ViewBannerState createState() => _ViewBannerState();
}

class _ViewBannerState extends State<ViewBanner> {
  int _currentCarousel = 0;
  GetStorage getStorage = GetStorage();
  late Future getBanner;
  final List _banner = [
    "https://firebase-kanvas.imgix.net/web_homebanner/homebanner/may/musholaalhidayahbutuhrenovasi.jpg?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&w=448?auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
    "https://firebase-kanvas.imgix.net/web_homebanner/homebanner/may/rumahamanperempuan.png?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&w=448?auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
    "https://firebase-kanvas.imgix.net/web_homebanner/homebanner/may/jandayatimdhuafa.jpg?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&w=448?auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
    "https://firebase-kanvas.imgix.net/web_homebanner/homebanner/may/bisazakatbantujanda.png?auto=compress,format&cs=tinysrgb&fm=png&fit=clip&w=448?auto=compress&fm=pjpg&cs=tinysrgb&fit=scale",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider(
            // items: banner.map((itemCarousel) {
            items: _banner.map((itemCarousel) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 480,
                    height: MediaQuery.of(context).size.height,
                    // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Card(
                        child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(itemCarousel))),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
                height: 200,
                aspectRatio: 10 / 5,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                // enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentCarousel = index;
                  });
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _banner.map((url) {
            int index = _banner.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: _currentCarousel == index
                    ? BoxShape.rectangle
                    : BoxShape.circle,
                color: _currentCarousel == index
                    ? const Color.fromARGB(255, 0, 174, 239)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
