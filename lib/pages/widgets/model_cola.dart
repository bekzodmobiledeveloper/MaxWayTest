import 'package:flutter/material.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';
import 'package:test_burger/pages/data/cola.dart';

import '../data/add_counter.dart';

class ModelCola extends StatelessWidget {
   ModelCola({Key? key, required this.increment}) : super(key: key);

   AddCounter counter = AddCounter.instance;
   Function increment;
  static List<Cola> cola = [
    Cola(
        title: "Sprite 1L",
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/cola1.png'),
    Cola(
        title: "Cola cola 1,5L",
        content: "Горячая закуска митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/cola2.png'),
    Cola(
        title: "Fanta 1L",
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/cola1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return colaItem(cola[index]);
        },
        itemCount: cola.length,
      ),
    );
  }

  Widget colaItem(Cola cola) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 10, top: 20, bottom: 20),
                child: Image.asset("${cola.imgName}"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cola.title,
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            cola.content,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            maxLines: 3,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "15,000 UZS",
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                          ),
                          TextButton(
                            onPressed: () {
                              counter.increment();
                              increment();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset("assets/images/add.png"),
                            ),
                          )                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

