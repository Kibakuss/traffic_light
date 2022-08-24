import 'package:flutter/material.dart';
import 'package:traffic_light/jucy.dart';

void main() {
  runApp(const TestCommit());
}

class TestCommit extends StatelessWidget {
  const TestCommit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(title: 'Yo'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GNG SQWD")),
        body: ListView(
          children: [
            Bang(),
            Nav(),
          ],
        ));
  }
}

class Bang extends StatelessWidget {
  const Bang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 30,
      color: Colors.red,
    );
  }
}

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Jucy()));
        },
        child: Text('Push'));
  }
}
