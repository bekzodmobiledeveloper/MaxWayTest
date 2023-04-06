import 'package:flutter/material.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';
import 'package:test_burger/pages/data/foods.dart';

class ModelFood extends StatefulWidget {
  const ModelFood({Key? key}) : super(key: key);

  @override
  State<ModelFood> createState() => _ModelFoodState();
}

class _ModelFoodState extends State<ModelFood> {
  static List<Foods> foods = [
    Foods(
        title: "Gavaya",
        img: 'assets/images/sir.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/pitsa1.png'),
    Foods(
        title: "Mexica",
        img: 'assets/images/qalampir.png',
        content: "Горячая закуска митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/pitsa2.png'),
    Foods(
        title: "Hot achchiko",
        img: 'assets/images/hot.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/pitsa3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return foodsItem(foods[index]);
        },
        itemCount: foods.length,
      ),
    );
  }

  Widget foodsItem(Foods foods) {
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
                child: Image.asset("${foods.imgName}"),
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
                            foods.title,
                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                          ),
                          horizontalSpace10,
                          Image.asset("${foods.img}"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            foods.content,
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
                            "45,000 UZS",
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset("assets/images/add.png"),
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
