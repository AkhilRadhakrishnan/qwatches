import 'package:flutter/material.dart';

class WatchCard extends StatefulWidget {
  final bool? card;
  final String? imageUrl;
  final String? serviceName;

  const WatchCard({super.key, this.imageUrl, this.serviceName, this.card});

  @override
  State<WatchCard> createState() => _WatchCardState();
}

class _WatchCardState extends State<WatchCard> {
 Color _iconColor = Colors.white;
 IconData _icon = Icons.favorite_border_rounded;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade200, //color of shadow
            spreadRadius:1, //spread radius
            blurRadius: 3, // blur radius
            offset: const Offset(2,4), // changes position of shadow
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: ClipRRect(
                child: Stack(
                  children: [
                    Container(
                      color:Colors.grey.shade100,
                      child: Image.asset(
                        widget.imageUrl!,
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1, //give the values according to your requirement
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if(_iconColor == Colors.white){
                                _icon = Icons.favorite;
                                _iconColor = Colors.red;
                              }else{
                                _iconColor = Colors.white;
                                _icon = Icons.favorite_border_rounded;
                              }
                            });
                          },
                          icon:
                          Icon(
                            _icon,
                            color: _iconColor,
                            size: 22,
                          )
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Text(
              widget.serviceName!,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  // fontWeight: FontWeight.w500
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Text("Lorem Impsum sample test",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                overflow: TextOverflow.ellipsis
                ),
            ),
          ),
          SizedBox(height: 15),
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("QAR: 25072",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
