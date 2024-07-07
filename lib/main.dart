import 'package:flutter/material.dart';

void main() {
  runApp(const RetroGameBox());
}

class RetroGameBox extends StatelessWidget {
  const RetroGameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retro Game Box Debug',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RGBHomePage(title: 'Retro Game Box Home Page'),
    );
  }
}

class RGBHomePage extends StatefulWidget {
  const RGBHomePage({super.key, required this.title});

  final String title;

  @override
  State<RGBHomePage> createState() => _RGBHomePageState();
}

class _RGBHomePageState extends State<RGBHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/main_bg.png',
            ),
          ),
        ),
        child: const Scaffold(
          appBar: null,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                Text(
                  'Retro Game Box',
                  style: TextStyle(fontSize: 40, color: Colors.purpleAccent),
                ),
              ],
            ),
          ),
        ));
  }
}
