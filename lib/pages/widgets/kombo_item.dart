import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_burger/core/config/theme/ui_helpers.dart';

class ComboItem extends StatelessWidget {
  const ComboItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromRGBO(255, 200, 92, 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(255, 255, 255, 0.203344),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Image(
                              image: AssetImage(
                                "assets/images/olov.png",
                              ),
                              width: 16,
                              height: 16,
                            ),
                            horizontalSpace5,
                            Text("Yangi", style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage(
                        "assets/images/pitsatext.png",
                      ),
                      width: 80,
                      height: 56,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/pitsa.png",
                      ),
                      width: 88,
                      height: 93,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromRGBO(128, 10, 122, 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(255, 255, 255, 0.203344),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Image(
                              image: AssetImage(
                                "assets/images/raketa.png",
                              ),
                              width: 16,
                              height: 16,
                            ),
                            horizontalSpace5,
                            Text("Ko'p sotilganlar", style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage(
                        "assets/images/combotext.png",
                      ),
                      width: 80,
                      height: 56,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/kombo.png",
                      ),
                      width: 88,
                      height: 93,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
