import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:q_watches/screens/accessoriesPage.dart';
import 'package:q_watches/widgets/goldSoukCard.dart';
import 'package:q_watches/widgets/homeCard.dart';
import 'package:q_watches/widgets/watchCard.dart';
import 'auctionPage.dart';
import 'goldsoukPage.dart';
import 'individualSellerPage.dart';
import 'luxuryPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  List imageList = [
    'assets/image/watchl.jpg',
    'assets/image/bidc.jpg',
    'assets/image/sell.jpg',
    'assets/image/goldsoukc.png',
    'assets/image/wtc.jpg'
  ];
  List nameList = [
    'Luxury Boutiques',
    'Auctions',
    'Individual Seller',
    'Gold souq',
    'Accessories'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 60,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(width: 20),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/image/pp.jpg'),
            ),
          ],
        ),
        // Icon(Icons.menu,color: primaryColor,),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Hi, Elevan',
            style: TextStyle(
                color: Colors.grey.shade800,
                //   color: primaryColor,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: IconButton(
              icon: Icon(
                Icons.add_alert_rounded,
                color: Colors.grey.shade800,
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextFormField(
                          cursorColor: Colors.black26,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Watches',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26)),
                          style: const TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.filter_alt,
                    color: Colors.black54,
                    size: 24,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(00),
                  color: Colors.white),
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                  physics: const ScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // childAspectRatio: 6.5 / 7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => getRoute(
                                    nameList.elementAt(index).toString())));
                      },
                      child: HomeCard(
                          serviceName: nameList.elementAt(index).toString(),
                          imageUrl: imageList.elementAt(index).toString()
                          // "https://uploads-ssl.webflow.com/5db5a1c0da948201a2e90a3b/5e230cc8b966d9a160822926_auction-bidding-platform.png",
                          ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  getRoute(String param) {
    switch (param) {
      case 'Luxury Boutiques':
        return luxuryPage();
      case 'Auctions':
        return AuctionPage();
      case 'Individual Seller':
        return IndividualPage();
      case 'Gold souq':
        return GoldSoukPage();
      case 'Accessories':
        return AccessoriesPage();
      default:
        return AccessoriesPage();
    }
  }
}
