import 'package:flutter/material.dart';
import 'package:q_watches/screens/watchDetailsPage.dart';
import 'package:q_watches/widgets/watchCard.dart';

class IndividualPage extends StatelessWidget {
  IndividualPage({Key? key}) : super(key: key);

  List imageList = [
    'assets/image/Rlx.jpg',
    'assets/image/rolex.jpg',
    'assets/image/rolex2.jpg',
    'assets/image/rolex3.jpg',
    'assets/image/rolx.jpg'
  ];
  List nameList = [
    'Rolex 5021',
    'Rolex 5865',
    'Rolex 4295',
    'Rolex 5291',
    'Rolex 0021'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text(
          'Individual Seller',
          style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
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
      body:SingleChildScrollView(
    child: Column(
    children: [
    const SizedBox(height: 5),
    Container(
    height: MediaQuery.of(context).size.height * 0.9,
    decoration: BoxDecoration(
    borderRadius: BorderRadiusDirectional.circular(00),
    color: Colors.white),
    padding: const EdgeInsets.all(10),
    child: GridView.builder(
    physics: const ScrollPhysics(),
    // scrollDirection: Axis.horizontal,
    itemCount: 5,
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
