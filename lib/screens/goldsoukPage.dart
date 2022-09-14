import 'package:flutter/material.dart';
import 'package:q_watches/widgets/goldSoukCard.dart';

import 'goldsoukInnerPage.dart';

class GoldSoukPage extends StatelessWidget {
  const GoldSoukPage({Key? key}) : super(key: key);

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
            color: Colors.black,size: 22,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Gold Souq',
          style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 0),
            child:Row(
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
      body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
          itemCount: 5,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return  InkWell(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>GoldSoukInnerPage() ));
                },
                child: GoldSoukCard());
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
        ),
      )),
    );
  }
}
