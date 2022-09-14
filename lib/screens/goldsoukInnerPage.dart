import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:q_watches/screens/watchDetailsPage.dart';
import 'package:q_watches/widgets/goldSoukCard.dart';

import '../widgets/watchCard.dart';

class GoldSoukInnerPage extends StatefulWidget {
  GoldSoukInnerPage({Key? key}) : super(key: key);

  @override
  State<GoldSoukInnerPage> createState() => _GoldSoukInnerPageState();
}

class _GoldSoukInnerPageState extends State<GoldSoukInnerPage> {
  List imgList = [
    'assets/image/cs2.jpg',
    'assets/image/cs3.jpg',
    'assets/image/cs1.png',
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
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        elevation: 6,
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Qatar Central Watch House',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.more_horiz_rounded,
                color: Colors.grey.shade300,
                size: 20,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.grey.shade800,
                    size: 24,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.sort,
                    color: Colors.grey.shade800,
                    size: 24,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
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
                    height: 160,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
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
                items: imgList.map((images) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          // border: Border.all(width: 0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(images.toString()),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 1 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(00),
                  color: Colors.white),
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                  physics: const ScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WatchDetailPage()));
                      },
                      child: WatchCard(
                          card: true,
                          serviceName: nameList.elementAt(index).toString(),
                          imageUrl: imageList.elementAt(index).toString()
                          // "https://uploads-ssl.webflow.com/5db5a1c0da948201a2e90a3b/5e230cc8b966d9a160822926_auction-bidding-platform.png",
                          ),
                    );
                  }),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
