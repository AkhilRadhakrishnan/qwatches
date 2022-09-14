import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:q_watches/utils/utils.dart';
import 'package:q_watches/widgets/goldSoukCard.dart';

import '../utils/style_constants.dart';
import '../widgets/watchCard.dart';

class WatchShop extends StatefulWidget {
  WatchShop({Key? key}) : super(key: key);

  @override
  State<WatchShop> createState() => _WatchShopState();
}

class _WatchShopState extends State<WatchShop> {
  List imgList = [
    'assets/image/Rlx.jpg',
    'assets/image/rolex.jpg',
    'assets/image/rolex2.jpg',
  ];

  List imageList = [
    'assets/image/Rlx.jpg',
    'assets/image/rolex.jpg',
    'assets/image/rolex2.jpg',
    'assets/image/rolex3.jpg',
    'assets/image/rolx.jpg',
    'assets/image/Rlx.jpg',
    'assets/image/rolex.jpg',
    'assets/image/rolex3.jpg',
  ];

  List nameList = [
    'Rolex 5021',
    'Rolex 5865',
    'Rolex 4295',
    'Rolex 5291',
    'Rolex 0021',
    'Rolex 5021',
    'Rolex 5865',
    'Rolex 4295',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 22,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Details',
          style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            sizedBox(15, 0),
          ],
        ),
      ),
    );
  }
}
