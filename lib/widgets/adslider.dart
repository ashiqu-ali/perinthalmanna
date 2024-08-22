import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdSlide extends StatelessWidget {
  const AdSlide({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://via.placeholder.com/800x400.png?text=Ad+1',
      'https://via.placeholder.com/800x400.png?text=Ad+2',
    ];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: imgList
            .map((item) => SizedBox(
                  child: Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
