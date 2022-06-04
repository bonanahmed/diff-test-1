import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardMenu5 extends StatelessWidget {
  const CardMenu5({
    Key? key,
    required this.dataCard5,
  }) : super(key: key);

  final List dataCard5;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        addSemanticIndexes: true,
        itemCount: dataCard5.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index >= dataCard5.length - 1) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 35,
                        ),
                        Text("Lihat Semua",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ))
                      ],
                    )),
              ),
            );
          } else {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: InkWell(
                onTap: () {
                  // Get.to(() => MerchantPage(
                  //       merchantSlug: dataCard5[index]['domain'],
                  //     ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                            fit: BoxFit.contain,
                            height: 100,
                            width: 480,
                            image: NetworkImage(dataCard5[index]['image'])),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Text(
                            dataCard5[index]['title'],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 480 * 0.17,
                                child: Text(
                                  dataCard5[index]['org'],
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ),
                              SvgPicture.asset(
                                  "src/img/icon/icon__verified-org.svg",
                                  height: 15,
                                  semanticsLabel: 'ORG'),
                              // const Icon(
                              //   Icons.check_circle,
                              //   color: Colors.blue,
                              //   size: 12,
                              // ),
                              // const Icon(
                              //   Icons.,
                              //   color: Colors.blue,
                              //   size: 12,
                              // )
                            ],
                          ),
                        ),
                        Container(
                          width: 480,
                          height: 15,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: LinearProgressIndicator(
                            value: dataCard5[index]['progress'],
                            semanticsLabel: 'Linear progress indicator',
                          ),
                        ),
                        Container(
                          width: 480,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: const Text(
                            "Terkumpul",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 480,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Text(
                            dataCard5[index]['nominal'],
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
