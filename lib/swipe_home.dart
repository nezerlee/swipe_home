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
    final orientation = MediaQuery.of(context).orientation;
    BoxFit fit;
    if (orientation == Orientation.landscape) {
      fit = BoxFit.fitWidth;
    } else {
      fit = BoxFit.fitHeight;
    }
    return Scaffold(
        body: AppinioSwiper(
            onSwipe: (index, direction) {
              setState(() {
                currentIndex = index;
              });
            },
            cardsCount: 20,
            cardsBuilder: (BuildContext context, int index) {
              return Container(
                height: screenHeight,
                width: screenWidth,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/prof.jpg',
                        fit: fit,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Omotayo Agbekeye, 30',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Material(
                                    borderOnForeground: true,
                                    elevation: 3.0,
                                    shadowColor: Colors.white,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    child: IconButton(
                                      icon: Icon(Icons.refresh),
                                      color: Colors.white,
                                      onPressed: null,
                                    ),
                                  ),
                                  Material(
                                    borderOnForeground: true,
                                    elevation: 3.0,
                                    shadowColor: Colors.white,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    child: IconButton(
                                      icon: Icon(Icons.clear),
                                      color: Colors.white,
                                      onPressed: null,
                                    ),
                                  ),
                                  Material(
                                    borderOnForeground: true,
                                    elevation: 3.0,
                                    shadowColor: Colors.white,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    child: IconButton(
                                      icon: Icon(Icons.favorite),
                                      color: Colors.white,
                                      onPressed: null,
                                    ),
                                  ),
                                  Material(
                                    borderOnForeground: true,
                                    elevation: 3.0,
                                    shadowColor: Colors.white,
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                    child: IconButton(
                                      icon: Icon(Icons.star),
                                      color: Color(0xffff0000),
                                      onPressed: null,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
