import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenshotPage extends StatelessWidget {
  const ScreenshotPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/photos/1.png",
      "assets/photos/2.png",
      "assets/photos/3.png",
      "assets/photos/4.png",
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Screenshots",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
                fontFamily: 'AlegreyaSansSC',
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        CarouselSlider(
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: images.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
