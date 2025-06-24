import "package:flutter/material.dart";

class PictureFrame extends StatelessWidget {
  const PictureFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5, 6, 7].map((num) {
          return Image.asset("asset/image$num.jpg", fit: BoxFit.cover);
        }).toList(),
      ),
    );
  }
}
