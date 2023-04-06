import 'package:flutter/material.dart';

class PhoneItem extends StatefulWidget {
  const PhoneItem({Key? key}) : super(key: key);

  @override
  State<PhoneItem> createState() => _PhoneItemState();
}

class _PhoneItemState extends State<PhoneItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 180.0),
        child: Container(
          width: double.infinity,
          height: 685.0,
          color: const Color.fromRGBO(128, 10, 122, 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 82.0),
                child: Image.asset("assets/images/doppi.png"),
              ),
              const Text(
                "Mobil ilovamiz orqali buyurtma berish yanada osonroq",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36.0, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, top: 48),
                child: Container(
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.white, width: 0.5),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png"),
                        const VerticalDivider(width: 16),
                        const Text("Google play",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "Inter-Medium.ttf")),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 12),
                child: Container(
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.white, width: 0.5),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/apple.png"),
                        const VerticalDivider(width: 16),
                        const Text("App Store",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "Inter-Medium.ttf")),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(child: Image.asset("assets/images/phone.png")),
      ),
    ]);
  }
}
