import 'package:flutter/material.dart';

class GoldSoukCard extends StatelessWidget {
  const GoldSoukCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade400, //color of shadow
            spreadRadius:1, //spread radius
            blurRadius: 3, // blur radius
            offset: const Offset(2,4), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
        border: Border.all(
            color: Colors.grey.shade200, width: 0.25, style: BorderStyle.solid),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),

      // decoration: BoxDecoration(
      //   boxShadow:[
      //     BoxShadow(
      //       color: Colors.white, //color of shadow
      //       spreadRadius:1, //spread radius
      //       blurRadius: 1, // blur radius
      //       offset: const Offset(2,2), // changes position of shadow
      //       //first paramerter of offset is left-right
      //       //second parameter is top to down
      //     ),
      //     //you can set more BoxShadow() here
      //   ],
      //   borderRadius: BorderRadiusDirectional.circular(10),
      //   border: Border.all(
      //       color: Colors.black26, width: 1.0, style: BorderStyle.solid),
      // ),
      height: MediaQuery.of(context).size.height * 0.22,
      child: Row(
        children: [
          ClipRRect(
            // borderRadius: const BorderRadius.only(
            //     topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/image/rolex2.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Qatar Central Watch House",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.fade),
              ),
              Text(
                "Marriot Hotels",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    overflow: TextOverflow.fade),
              ),
              SizedBox(height: 30),
              Text("Lorem ipsum sample text"),
            ],
          ),
          const SizedBox(width: 8)
        ],
      ),
    );
  }
}
