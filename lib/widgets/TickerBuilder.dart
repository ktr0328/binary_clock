// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'BinaryClock.dart';

class TickerBuilder extends StatefulWidget {
  const TickerBuilder({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TickerBuilderState();
}

class _TickerBuilderState extends State<TickerBuilder>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  late DateTime _time;

  final double fps = 30;

  Duration lastTick = const Duration(milliseconds: 0);
  double tmpElapsedTick = 0;

  @override
  void initState() {
    super.initState();
    _time = DateTime.now();
    _ticker = createTicker((elapsed) {
      var diff = elapsed.inMilliseconds - lastTick.inMilliseconds;
      tmpElapsedTick += diff;
      var frameTime = 10000 / fps;

      if (tmpElapsedTick > frameTime) {
        setState(() => _time = DateTime.now());
        lastTick = elapsed;
        tmpElapsedTick = 0;
      }
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BinaryClock(time: _time);
}
