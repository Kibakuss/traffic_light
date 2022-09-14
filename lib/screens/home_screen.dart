import 'dart:async';

import 'package:flutter/material.dart';
import 'package:traffic_light/widgets/light_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout 0.1'),
        ),
        body: SafeArea(
          child: Column(
            children: const [
              TrafficLight(),
              TimerButtons(),
            ],
          ),
        ));
  }
}

class TrafficLight extends StatefulWidget {
  const TrafficLight({Key? key}) : super(key: key);

  @override
  State<TrafficLight> createState() => _TrafficLightState();
}

class _TrafficLightState extends State<TrafficLight> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(15)),
          width: MediaQuery.of(context).size.width / 2.3,
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              LightWidget(color: Colors.red),
              // LightWidget(color: Colors.yellow),
              // LightWidget(color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

class TimerButtons extends StatefulWidget {
  const TimerButtons({Key? key}) : super(key: key);

  @override
  State<TimerButtons> createState() => _TimerButtonsState();
}

class _TimerButtonsState extends State<TimerButtons> {
  int seconds = 5;
  void startTimer() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Start')),
        // ElevatedButton(onPressed: () {}, child: const Text('Pause')),
      ],
    );
  }
}
