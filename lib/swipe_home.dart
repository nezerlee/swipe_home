import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

class SwipeHome extends StatefulWidget {

  @override
  _SwipeHomeState createState() => _SwipeHomeState();
}

class _SwipeHomeState extends State<SwipeHome> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> pages = ['Page 1', 'Page 2', 'Page 3'];
    final orientation = MediaQuery.of(context).orientation;
    BoxFit fit;
    if (orientation == Orientation.landscape) {
      fit = BoxFit.fitWidth;
    } else {
      fit = BoxFit.fitHeight;
    }
    return Scaffold(
      body: AppinioSwiper(
        cardsBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: ClipRRect(
              child: Image.asset(
                'assets/image/unsplash-kitsune-4.jpg',
                fit: fit,
              ),
            ),
          );
        },
        cardsCount: 20,
        onSwipe: (index, direction) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

}