import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsImage extends StatelessWidget {
  const NewsImage(
      {required this.name,
      required this.desc,
      required this.image,
      required this.time,
      super.key});
  final String? name;
  final String? desc;
  final String image;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
      Image.network(
        image,
        fit: BoxFit.cover,
      ),
      Positioned(
          bottom: 5,
          left: 10,
          child: Text(name!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)))
    ]);
  }
}
