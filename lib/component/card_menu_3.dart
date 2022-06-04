import 'package:flutter/material.dart';

class CardMenu3 extends StatelessWidget {
  const CardMenu3({
    Key? key,
    required this.dataCard3,
  }) : super(key: key);

  final List dataCard3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataCard3.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Get.to(() => InfoDetailPage(
              //       blogSlug: dataCard3[index]['slug'],
              //     ));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: SizedBox(
                width: 480 * 0.65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Image(
                          fit: BoxFit.cover,
                          height: 150,
                          width: 480,
                          image: NetworkImage(dataCard3[index]['image'])),
                    ),
                    Container(
                      width: 480,
                      height: 29,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Text(
                        dataCard3[index]['title'],
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 480,
                      height: 15,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: LinearProgressIndicator(
                        value: dataCard3[index]['progress'],
                        semanticsLabel: 'Linear progress indicator',
                      ),
                    ),
                    Container(
                        width: 480,
                        height: 29,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(dataCard3[index]['nominal']),
                            Text(dataCard3[index]['dueDate']),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
