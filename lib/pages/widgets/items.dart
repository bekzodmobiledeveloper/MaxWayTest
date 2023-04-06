import 'package:flutter/material.dart';


class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Image(
              image: AssetImage(
                "assets/images/youtobe.png",
              ),
            ),
            Image(
              image: AssetImage(
                "assets/images/facebook.png",
              ),
            ),
            Image(
              image: AssetImage(
                "assets/images/ins.png",
              ),
            ),
            Image(
              image: AssetImage(
                "assets/images/teg.png",
              ),
            ),
            Image(
              image: AssetImage(
                "assets/images/tik.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
