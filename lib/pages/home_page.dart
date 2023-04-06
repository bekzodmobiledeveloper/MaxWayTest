import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';
import 'package:test_burger/pages/widgets/app_bar_item.dart';
import 'package:test_burger/pages/widgets/items.dart';
import 'package:test_burger/pages/widgets/kombo_item.dart';
import 'package:test_burger/pages/widgets/model_burger.dart';
import 'package:test_burger/pages/widgets/model_cola.dart';
import 'package:test_burger/pages/widgets/model_combo.dart';
import 'package:test_burger/pages/widgets/model_food.dart';
import 'package:test_burger/pages/widgets/phone_tem.dart';
import 'package:test_burger/pages/widgets/second_appbar_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarItem(),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/burger.png",
                ),
              ),
              Text(
                "Siz izlagan mazzali ta'mlar",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(fontSize: 45.0, color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              const ComboItem(),
              const SecondAppBarItem(),
              verticalSpace30,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Pitsa",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(fontSize: 36.0, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ModelFood(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.0),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Opacity(
                          opacity: 0.5,
                          child: Text("Ko'proq", style: TextStyle(fontSize: 14.0, fontFamily: "Inter-Medium.ttf")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace40,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Burger",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(fontSize: 36.0, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ModelBurger(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.0),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Opacity(
                          opacity: 0.5,
                          child: Text("Ko'proq", style: TextStyle(fontSize: 14.0, fontFamily: "Inter-Medium.ttf")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace40,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Combo",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(fontSize: 36.0, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ModelCombo(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1.0),
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Opacity(
                          opacity: 0.5,
                          child: Text("Ko'proq", style: TextStyle(fontSize: 14.0, fontFamily: "Inter-Medium.ttf")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpace40,
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Ichimliklar",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(fontSize: 36.0, color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const ModelCola(),
              const PhoneItem(),
              verticalSpace25,
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Asosiy",
                      style: TextStyle(fontSize: 18.0, fontFamily: "Inter-Medium.ttf"),
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/down.png",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Qo'shimcha",
                      style: TextStyle(fontSize: 18.0, fontFamily: "Inter-Medium.ttf"),
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/down.png",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
              ),
              verticalSpace20,
              Text(
                "(+998 71) 200-54-00",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(fontSize: 25.0, color: Colors.black87, fontWeight: FontWeight.normal),
              ),
              verticalSpace30,
              Text(
                "100011, Toshkent sh. Shayxontohur tumani,Zarqaynar ko’chasi, 3B-uy",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.normal),
              ),
              verticalSpace20,
              const Items(),
              verticalSpace20,
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
              ),
              verticalSpace30,
              Text(
                "© Maxway, 2020",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.black54, fontWeight: FontWeight.normal),
              ),
              verticalSpace20,
            ],
          ),
        ),
      ),
    );
  }
}
