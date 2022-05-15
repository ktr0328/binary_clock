import 'package:flutter/material.dart';

import 'BinaryBlock.dart';

class BinaryContainer extends StatelessWidget {
  final int time;
  final TextStyle? style;

  const BinaryContainer({
    Key? key,
    required this.time,
    this.style,
  }) : super(key: key);

  List<String> get timeFlag => time.toRadixString(2).padLeft(6, '0').split('');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (var s in timeFlag) ...[
          Center(
            child: BinaryBlock(flag: s == '0'),
          )
        ]
      ],
    );
  }
}
