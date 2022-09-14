import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final bool? card;
  final String? imageUrl;
  final String? serviceName;
  const HomeCard({super.key, this.imageUrl, this.serviceName, this.card});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),

      // width: 175,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400, //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 10, // blur radius
            offset: const Offset(1, 1), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.all(15),
              // padding: EdgeInsets.all(5),
              height: 25,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                // bottomLeft: Radius.circular(10),
                // bottomRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.0), BlendMode.colorBurn),
                  image: AssetImage(imageUrl!),
                ),
                // borderRadius: BorderRadius.circular(00),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              serviceName!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
