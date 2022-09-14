import 'package:flutter/material.dart';
import '../utils/style_constants.dart';
import '../widgets/commentCard.dart';
import '../widgets/shopCard.dart';

class ShopDetailPage extends StatefulWidget {
  ShopDetailPage({Key? key}) : super(key: key);

  @override
  State<ShopDetailPage> createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  List imgList = [
    'assets/image/Rlx.jpg',
    'assets/image/rolex.jpg',
    'assets/image/rolex2.jpg',
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
          'Q watch house',
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
              height: MediaQuery.of(context).size.width * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
              child: ShopCard(
                imageUrl: imgList.elementAt(0),
                shopName: nameList.elementAt(0),
                card: null,
              ),
            ),
            sizedBox(10, 0),
            ListView.separated(
              itemCount: 12,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return const CommentCard(shopName: "");
              },
              separatorBuilder: (BuildContext context, int index) {
                return sizedBox(10, 0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
