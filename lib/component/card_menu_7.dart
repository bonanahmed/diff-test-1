import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardMenu7 extends StatelessWidget {
  const CardMenu7({
    Key? key,
    required this.dataCard7,
  }) : super(key: key);

  final List dataCard7;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dataCard7.length,
      itemBuilder: (context, index) {
        if (index >= dataCard7.length - 1) {
          return SizedBox(
            width: 480,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 231, 245, 255),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromARGB(255, 231, 245, 255),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: const Size.fromHeight(35)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 10, color: Theme.of(context).primaryColor),
                    ],
                  )),
            ),
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: SizedBox(
                        width: 480 * 0.4,
                        child: Image.network(
                          dataCard7[index]["image"],
                          fit: BoxFit.contain,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    width: 480 * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(dataCard7[index]['title']),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text(dataCard7[index]['org'],
                                  style: const TextStyle(fontSize: 10)),
                              SvgPicture.asset(
                                  "src/img/icon/icon__verified-org.svg",
                                  height: 15,
                                  semanticsLabel: 'ORG'),
                            ],
                          ),
                        ),
                        Container(
                          width: 480,
                          height: 5,
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: LinearProgressIndicator(
                            minHeight: 5,
                            value: dataCard7[index]['progress'],
                            semanticsLabel: 'Linear progress indicator',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Terkumpul", style: TextStyle(fontSize: 10)),
                            Text("Sisa hari", style: TextStyle(fontSize: 10))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(dataCard7[index]['nominal'],
                                  style: const TextStyle(fontSize: 10)),
                              Text(dataCard7[index]['time'],
                                  style: const TextStyle(fontSize: 10))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Divider()
            ],
          );
        }
      },
    );
  }
}
