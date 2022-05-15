// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BinaryBlock extends StatelessWidget {
  final bool flag;

  const BinaryBlock({Key? key, required this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getIconSize() {
      var width = MediaQuery.of(context).size.width * 0.11;
      var height = MediaQuery.of(context).size.height * 0.11;
      return width > height ? height : width;
    }

    return AnimatedOpacity(
        opacity: flag ? 0.1 : 1.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        child: Icon(
          Icons.hexagon,
          size: getIconSize(),
          color: Colors.blueGrey,
          shadows: const [
            BoxShadow(color: Colors.white, blurRadius: 3),
            BoxShadow(color: Colors.indigo, blurRadius: 18),
            BoxShadow(color: Colors.white38, blurRadius: 32),
          ],
        ));
  }
}
