import 'package:flutter/material.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';
import 'package:test_burger/pages/data/combo.dart';

import '../data/add_counter.dart';

class ModelCombo extends StatelessWidget {
   ModelCombo({Key? key, required this.increment}) : super(key: key);

  AddCounter counter = AddCounter.instance;
  Function increment;
  static List<Combo> combo = [
    Combo(
        title: "Combo-1",
        img: 'assets/images/sir.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/combo1.png'),
    Combo(
        title: "Combo-2",
        img: 'assets/images/qalampir.png',
        content: "Горячая закуска митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/combo2.png'),
    Combo(
        title: "Combo-3",
        img: 'assets/images/hot.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/combo1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return comboItem(combo[index]);
        },
        itemCount: combo.length,
      ),
    );
  }

  Widget comboItem(Combo combo) {
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
                child: Image.asset("${combo.imgName}"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            combo.title,
                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                          ),
                          horizontalSpace10,
                          Image.asset("${combo.img}"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            combo.content,
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
                            "50,000 UZS",
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
                          )
                        ],
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

