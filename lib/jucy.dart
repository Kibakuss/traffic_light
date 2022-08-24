import 'package:flutter/material.dart';

class Jucy extends StatelessWidget {
  const Jucy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout 0.1'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Обратно')),
              TrafficLight(),
              ButtonSvet(),
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
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(15)),
        width: MediaQuery.of(context).size.width / 2,
        height: 450,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(60)),
                  width: 100,
                  height: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(60)),
                  width: 100,
                  height: 100,
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(60)),
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSvet extends StatefulWidget {
  const ButtonSvet({Key? key}) : super(key: key);

  @override
  State<ButtonSvet> createState() => _ButtonSvetState();
}

class _ButtonSvetState extends State<ButtonSvet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Start')),
        ElevatedButton(onPressed: () {}, child: Text('Pause'))
      ],
    );
  }
}
