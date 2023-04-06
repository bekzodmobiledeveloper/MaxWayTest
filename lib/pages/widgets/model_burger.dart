import 'package:flutter/material.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';
import 'package:test_burger/pages/data/burger.dart';

class ModelBurger extends StatefulWidget {
  const ModelBurger({Key? key}) : super(key: key);

  @override
  State<ModelBurger> createState() => _ModelBurgerState();
}

class _ModelBurgerState extends State<ModelBurger> {
  static List<Burger> burger = [
    Burger(
        title: "Cheeseburger",
        img: 'assets/images/sir.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger1.png'),
    Burger(
        title: "Chiliburger",
        img: 'assets/images/qalampir.png',
        content: "Горячая закуска митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger1.png'),
    Burger(
        title: "Hamburger",
        img: 'assets/images/hot.png',
        content: "Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле",
        imgName: 'assets/images/burger1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return burgerItem(burger[index]);
        },
        itemCount: burger.length,
      ),
    );
  }

  Widget burgerItem(Burger burger) {
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
                child: Image.asset("${burger.imgName}"),
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
                            burger.title,
                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Inter-Regular.ttf"),
                          ),
                          horizontalSpace10,
                          Image.asset("${burger.img}"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            burger.content,
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
