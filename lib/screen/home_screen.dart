import 'package:flutter/material.dart';
import 'package:retro_game_box/game/flap_bird.dart';
import 'package:retro_game_box/ui_base/image_grid.dart';
import '../ui_base/background_container.dart';

class RGBHomePage extends StatefulWidget {
  RGBHomePage({super.key, required this.title});

  final String title;

  @override
  State<RGBHomePage> createState() => _RGBHomePageState();
}

class _RGBHomePageState extends State<RGBHomePage> {
  List<ImageModel> imageModel = [
    ImageModel(
        imageResource: Image.asset('assets/images/select_box.png'),
        screen: FlapBirdScreen(
          title: "Flappy Bird",
        ),
        text: "플래피 버드"),
    ImageModel(
        imageResource: Image.asset('assets/images/select_box.png'),
        screen: FlapBirdScreen(
          title: "Flappy Bird",
        ),
        text: "플래피 버드"),
  ];

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      backgroundImage: const AssetImage('assets/images/main_bg.png'),
      child: Scaffold(
        appBar: null,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  child: ImageGrid(
                imageModel: imageModel,
                gridCount: 2,
              )),
              const Text(
                'Retro Game Box',
                style: TextStyle(fontSize: 40, color: Colors.purpleAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
