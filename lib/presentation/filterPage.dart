import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:q_watches/widgets/homeCard.dart';
import '../presentation/shopDetails.dart';
import '../screens/brandFilterPage.dart';
import '../utils/style_constants.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
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
            Icons.close,
            color: Colors.black,
            size: 22,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Refine Filter ',
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
            sizedBox(10, 0),
            Text(
              'Basic Info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            sizedBox(10, 0),
            divider(2, 1),
            sizedBox(10, 0),
            // TextButton(onPressed: () {
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BrandFilterPage()));
            // }, child: Text('Brand',
            //   style: TextStyle(
            //   fontSize: 16,
            // ))),
            // sizedBox(10, 0),
            // divider(2, 1),
            // sizedBox(10, 0),
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
            Text('Price',
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
              'Condition & Delivery Contents',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            sizedBox(10, 0),
            divider(2, 1),
            sizedBox(10, 0),
            Text("Delivery Contents", style: TextStyle(fontSize: 16)),
            sizedBox(10, 0),
            divider(2, 1),
            sizedBox(10, 0),
            Text('New/Pre-Owned',
                style: TextStyle(
                  fontSize: 16,
                )),
            sizedBox(10, 0),
            divider(2, 1),
            sizedBox(10, 0),
            Text('Condition',
                style: TextStyle(
                  fontSize: 16,
                )),
            sizedBox(10, 0),
            divider(2, 1),
            sizedBox(10, 0),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Apply Filters", style: TextStyle(fontSize: 18,color: Colors.white)),
                ],
              ),
              style: elevatedButton(
                  MediaQuery.of(context).size.width,Colors.orangeAccent.shade400),
              onPressed: () {},
            ),
            sizedBox(10, 0),
          ],
        ),
      ),
    );
  }
}
