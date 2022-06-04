import 'package:flutter/material.dart';

class CardMenu6 extends StatelessWidget {
  const CardMenu6({
    Key? key,
    required this.dataCard6,
  }) : super(key: key);

  final List dataCard6;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        addSemanticIndexes: true,
        itemCount: dataCard6.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index >= dataCard6.length - 1) {
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
                  //       merchantSlug: dataCard6[index]['domain'],
                  //     ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_horiz,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Row(children: [
                            if (dataCard6[index]['image'] == null) ...[
                              const CircleAvatar(
                                  maxRadius: 20,
                                  backgroundImage: AssetImage(
                                      "src/img/icon/icon_anonymous-user.png")),
                            ] else ...[
                              CircleAvatar(
                                  maxRadius: 20,
                                  backgroundImage:
                                      NetworkImage(dataCard6[index]['image'])),
                            ],
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      dataCard6[index]['user'],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        dataCard6[index]['article'],
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "• " + dataCard6[index]['time'],
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                          child: Text(dataCard6[index]["text"]),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                          child: Row(
                            children: [
                              Text(
                                dataCard6[index]["amen"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                " mengaminkan doa ini",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                          child: const Divider(
                            thickness: 1,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(children: const [
                                  Icon(Icons.favorite,
                                      size: 15, color: Colors.grey),
                                  Text(
                                    "  Aamiin",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                                Row(children: const [
                                  Icon(Icons.share_rounded,
                                      size: 15, color: Colors.grey),
                                  Text(
                                    "  Bagikan",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                              ]),
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
