import 'package:flutter/material.dart';
import 'package:q_watches/utils/style_constants.dart';
import 'package:q_watches/utils/utils.dart';

import '../presentation/shopDetails.dart';

class ShopCard extends StatefulWidget {
  final bool? card;
  final String? imageUrl;
  final String? shopName;

  const ShopCard(
      {super.key,
      required this.imageUrl,
      required this.shopName,
      required this.card});

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  final _formKey = GlobalKey<FormState>();
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
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.grey.shade100,
                child: Image.asset(
                  widget.imageUrl!,
                  fit: BoxFit.cover,
                  // height: double.infinity,
                  // width: double.infinity,
                ),
              ),
              sizedBox(0, 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    widget.shopName!,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  sizedBox(10, 0),
                  Text(
                    "SS 47 Street suit 480",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        overflow: TextOverflow.ellipsis),
                  ),
                  sizedBox(5, 0),
                  Text(
                    "Century hotel ,Doha ",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis),
                  ),
                  sizedBox(5, 0),
                  Text(
                    "Qatar",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              )
            ],
          ),
          sizedBox(10, 0),
          Row(
            children: [
              Text("Reviews : 4.8",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 20,
              ),
              Text("(5)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
          sizedBox(5, 0),
          Text("Trusted seller since 1991"),
          sizedBox(5, 0),
          Text("513 watches listed"),
          sizedBox(15, 0),
          ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Contact Seller", style: TextStyle(fontSize: 18,color: Colors.white)),
              ],
            ),
            style: elevatedButton(
                MediaQuery.of(context).size.width,Colors.orangeAccent.shade400),
            onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text("Messsage"),
                              TextFormField(
                                minLines: 1,
                                maxLines: 5,
                              ),
                              TextButton(
                                child: Text("SUBMIT",style: TextStyle(fontSize: 16,color: Colors.green),),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  // Scaffold.of(context).showSnackBar(snackBar);
                                 Navigator.pop(context);

                                },
                              )
                            ],
                          ),
                        ),
                      );
                    });
            },
          )
        ],
      ),
    );
  }
}
