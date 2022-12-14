import 'dart:async';

import 'package:flutter/material.dart';

class TestLight extends StatefulWidget {
  const TestLight({super.key});

  @override
  State<TestLight> createState() => _TestLightState();
}

class _TestLightState extends State<TestLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          title: const Text(
            'Traffic Light by B.B.A.',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
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

    Timer(const Duration(seconds: 3), () {
      setState(() {
        _changeColorRed = true;
      });
    });
    Timer(const Duration(seconds: 6), () {
      setState(() {
        _changeColorRed = false;
        _changeColorYellow = true;
      });
    });
    Timer(const Duration(seconds: 9), () {
      setState(() {
        _changeColorYellow = false;
        _changeColorGreen = true;
      });
      Timer(const Duration(seconds: 12), () {
        setState(() {
          _changeColorYellow = false;
          _changeColorGreen = false;
          _changeColorGreen = false;
          _isButtonPressed = false;
        });
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
                      color: _changeColorRed ? Colors.red : Colors.black26,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color:
                          _changeColorYellow ? Colors.yellow : Colors.black26,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: _changeColorGreen ? Colors.green : Colors.black26,
                      borderRadius: BorderRadius.circular(60)),
                  height: 100,
                  width: 100,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      _isButtonPressed == false
                          ? Colors.blue[200]
                          : Color.fromARGB(255, 88, 67, 65)),
                  // padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  // textStyle:
                  //     MaterialStateProperty.all(TextStyle(fontSize: 15))),
                ),
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
