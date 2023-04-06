import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondAppBarItem extends StatelessWidget {
  const SecondAppBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 46,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(245, 245, 245, 1),
              ),
              child: const Image(
                image: AssetImage(
                  "assets/images/menuu.png",
                ),
                width: 16,
                height: 16,
              ),
            ),
            Text(
              'Pitsa',
              style: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black87, fontWeight: FontWeight.normal),
            ),
            Text(
              'Burger',
              style: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.normal),
            ),
            Text(
              'Combo',
              style: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.normal),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: const Color.fromRGBO(241, 179, 1, 1),
              ),
              child: Text(
                'Barchasi',
                style: GoogleFonts.openSans(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
