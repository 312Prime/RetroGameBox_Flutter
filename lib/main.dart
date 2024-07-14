import 'package:flutter/material.dart';
import 'package:retro_game_box/screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

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
      home: RGBHomePage(title: 'Retro Game Box Home Page'),
    );
  }
}