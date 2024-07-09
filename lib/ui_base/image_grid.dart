import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  final List<ImageModel> imageModel;
  final int gridCount;

  const ImageGrid({
    Key? key,
    required this.imageModel,
    required this.gridCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        childAspectRatio: 1.0,
      ),
      itemCount: imageModel.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => imageModel[index].screen,
          child: imageModel[index].imageResource,
        );
      },
    );
  }
}

class ImageModel {
  final String text;
  final Widget imageResource;
  final Widget screen;

  ImageModel(
      {required this.text, required this.imageResource, required this.screen});
}
