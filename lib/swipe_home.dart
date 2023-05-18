import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

class SwipeHome extends StatefulWidget {
  const SwipeHome({super.key});

  @override
  _SwipeHomeState createState() => _SwipeHomeState();
}

class _SwipeHomeState extends State<SwipeHome> {
  @override
  Widget build(BuildContext context) {
    List<String> pages = ['Page 1', 'Page 2', 'Page 3'];
    int currentIndex = 0;
    return Scaffold(
      body: AppinioSwiper(
        cardsBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Text(index.toString()),
          );
        },
        cardsCount: 20,
      ),
    );
  }
}
