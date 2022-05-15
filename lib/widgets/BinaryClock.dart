// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'BinaryContainer.dart';

class BinaryClock extends StatelessWidget {
  final DateTime time;

  const BinaryClock({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BinaryContainer(
              time: time.month,
            ),
            BinaryContainer(
              time: time.day,
            ),
            BinaryContainer(
              time: time.hour,
            ),
            BinaryContainer(
              time: time.minute,
            ),
            BinaryContainer(
              time: time.second,
            ),
          ],
        ),
      ),
    );
  }
}
