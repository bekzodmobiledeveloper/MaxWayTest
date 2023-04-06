import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppBarItem extends StatelessWidget {
  const AppBarItem({Key? key}) : super(key: key);

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
          Image(
            image: AssetImage(
              "assets/images/savat.png",
            ),
            width: 40,
            height: 40,
          ),
          Image(
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
