import 'package:flutter/material.dart';
import 'package:q_watches/utils/style_constants.dart';

class CommentCard extends StatefulWidget {
  final String? shopName;

  const CommentCard({
    super.key,
    required this.shopName,
  });

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200, //color of shadow
            spreadRadius: 1, //spread radius
            blurRadius: 1, // blur radius
            offset: const Offset(2, 4), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
        border: Border.all(
            color: Colors.grey.shade400, width: 0.25, style: BorderStyle.solid),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBox(10, 0),
          Row(
            children: [
              Text("Review by joh on 04, july 2022 ",
                  style: TextStyle(   fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45)),
              Spacer(),
              Text("4",
                  style: TextStyle(   fontSize: 15,
                      fontWeight: FontWeight.w400,
                  )),
              Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 20,
              ),
              Text("(5)",
                  style: TextStyle(   fontSize: 15,
                      fontWeight: FontWeight.w400,
                  )),
            ],
          ),
          sizedBox(10, 0),
          divider(0, 1),
          sizedBox(10, 0),
          Row(
            children: [
              Icon(
                Icons.person_rounded,
                color: Colors.orangeAccent,
                size: 20,
              ),
              sizedBox(0, 10),
              Text("Buyer's Comment :",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
          ),
          sizedBox(5, 0),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
              ,style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
          sizedBox(5, 0),
          Row(
            children: [
              Icon(
                Icons.person_outline,
                color: Colors.orangeAccent,
                size: 20,
              ),
              sizedBox(0, 10),
              Text("Dealer's Comment :",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
          sizedBox(10, 0),
          Text("Thank you",style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }
}
