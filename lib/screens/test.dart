import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestLight extends StatefulWidget {
  const TestLight({super.key});

  @override
  State<TestLight> createState() => _TestLightState();
}

class _TestLightState extends State<TestLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test timer'),
        ),
        body: SafeArea(
          child: Column(
            children: const [
              TrafficLightTest(),
            ],
          ),
        ));
  }
}

class TrafficLightTest extends StatefulWidget {
  const TrafficLightTest({super.key});

  @override
  State<TrafficLightTest> createState() => _TrafficLightTestState();
}

class _TrafficLightTestState extends State<TrafficLightTest> {
  bool _isButtonPressed = false;

  // show a blue box when _showBox == true
  bool _changeColorRed = false;
  bool _changeColorYellow = false;
  bool _changeColorGreen = false;

  void _startTimer() {
    setState(() {
      _isButtonPressed = true;
    });

    Timer(const Duration(seconds: 5), () {
      setState(() {
        _changeColorRed = true;
      });
    });
    Timer(const Duration(seconds: 10), () {
      setState(() {
        _changeColorYellow = true;
      });
    });
    Timer(const Duration(seconds: 15), () {
      setState(() {
        _changeColorGreen = true;
      });
    });
  }

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
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: _changeColorRed ? Colors.black26 : Colors.red,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:
                          _changeColorYellow ? Colors.black26 : Colors.yellow,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: _changeColorGreen ? Colors.black26 : Colors.green,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              ElevatedButton(
                onPressed: _isButtonPressed == false ? _startTimer : null,
                child: const Text('Start'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
