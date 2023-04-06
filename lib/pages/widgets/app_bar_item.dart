import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/add_counter.dart';

class AppBarItem extends StatelessWidget {
   AddCounter count;

  AppBarItem({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage(
              "assets/images/maxway.png",
            ),
            width: 40,
            height: 40,
          ),
          Text(
            'Menyu',
            style: GoogleFonts.openSans(fontSize: 12.0, color: Colors.black87, fontWeight: FontWeight.normal),
          ),
          Text(
            'Bolalar uchun',
            style: GoogleFonts.openSans(fontSize: 12.0, color: Colors.black54, fontWeight: FontWeight.normal),
          ),
          Text(
            'Filliallar',
            style: GoogleFonts.openSans(fontSize: 12.0, color: Colors.black54, fontWeight: FontWeight.normal),
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/qulf.png",
                ),
                width: 50,
                height: 50,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      "assets/images/oval.png",
                    ),
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    '${count.count}',
                    style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const Image(
            image: AssetImage(
              "assets/images/menu.png",
            ),
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
