import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:q_watches/utils/utils.dart';
import 'package:q_watches/widgets/goldSoukCard.dart';
import 'package:q_watches/widgets/homeCard.dart';

import '../presentation/shopDetails.dart';
import '../utils/style_constants.dart';
import '../widgets/watchCard.dart';

class WatchDetailPage extends StatefulWidget {
  WatchDetailPage({Key? key}) : super(key: key);

  @override
  State<WatchDetailPage> createState() => _WatchDetailPageState();
}

class _WatchDetailPageState extends State<WatchDetailPage> {
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
    'Q watch house',
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
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: imgList
                    .map((item) => Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 10.0),
                                        child: Text(
                                          '${imgList.indexOf(item) + 1} / ${imgList.length}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ))
                    .toList(),
              ),
            ),
            sizedBox(15, 0),
            Text(
              'Rolex Sea Dweller',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            sizedBox(5, 0),
            Text(
              'QAR : 17,625',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            sizedBox(15, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                watchCondition('Condition : Unworn'),
                SizedBox(width: 5),
                watchCondition('Original Box'),
              ],
            ),
            sizedBox(20, 0),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BUY", style: TextStyle(fontSize: 18)),
                ],
              ),
              style: elevatedButton(
                  MediaQuery.of(context).size.width, Colors.green),
              onPressed: () {},
            ),
            sizedBox(10, 0),
            ExpansionTile(
              tilePadding:EdgeInsets.zero ,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              backgroundColor: Colors.white,
              title: Text(
                'Details..',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)
              ),
              children: [
                Text(
                  'Basic Info',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Listing Code',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Brand',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Model',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Reference number',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Case Material',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Movement',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Year of Production',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Scope of Deilivery',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(20, 0),
                Text(
                  'Case',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                ),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Case Material',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Case Diameter',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Dial',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(20, 0),
                Text(
                  'Bracelet/Strap',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                ),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Bracelet Material',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text('Clasp',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(20, 0),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                sizedBox(10, 0),
                divider(2, 1),
                sizedBox(10, 0),
              ],
            ),
            sizedBox(10, 0),
            Text("Seller", style: TextStyle(fontSize: 18)),
            sizedBox(10, 0),
            Row(
crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height:150,width: 150,
                  child: HomeCard(
                      serviceName: nameList.elementAt(0).toString(),
                      imageUrl: imageList.elementAt(1).toString()
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Reviews : 4.8", style: TextStyle(fontSize: 16)),
                        Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                      ],
                    ),
                    sizedBox(10, 0),
                    Text("Trusted seller since 1991"),
                    sizedBox(10, 0),
                    Text("513 watches listed")
                  ],
                )

              ],
            ),
            sizedBox(10, 0),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("More About Seller", style: TextStyle(fontSize: 18,color: Colors.green)),
                ],
              ),
              style: elevatedButton(
                  MediaQuery.of(context).size.width, Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => ShopDetailPage()));
              },
            ),
            sizedBox(10, 0),

          ],
        ),
      ),
    );
  }
}
