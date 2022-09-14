import 'package:flutter/material.dart';

class AccessoriesCard extends StatefulWidget {
  final String? imageUrl;
  final String? serviceName;

  const AccessoriesCard({super.key, this.imageUrl, this.serviceName});

  @override
  State<AccessoriesCard> createState() => _AccessoriesCardState();
}

class _AccessoriesCardState extends State<AccessoriesCard> {
  Color _iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(
      //     color: Colors.grey.shade400, width: 1.0, style: BorderStyle.solid),),
      child: Column(
        children: [
          Expanded(
              flex: 8,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      widget.imageUrl!,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.width * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                  Positioned(
                    top: 1,
                    right: 1, //give the values according to your requirement
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_iconColor == Colors.white) {
                              _iconColor = Colors.red;
                            } else {
                              _iconColor = Colors.white;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _iconColor,
                          size: 22,
                        )),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Text(
              widget.serviceName!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
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
