import 'package:flutter/material.dart';

class BrandFilterPage extends StatefulWidget {
  BrandFilterPageState createState() => BrandFilterPageState();
}

class BrandFilterPageState extends State<BrandFilterPage> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Rolex",
    "Chopard",
    "Cartier",
    "Omega",
    "IWC",
    "Hublot",
    "Montblank",
    "Apple",
    "Patek Phillipe",
    "Richard Mille",
    "Fossil",
    "DW",
    "Diamond",
    "Ck",
    "Lacoste",
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);
  bool isSelected = true;
  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  bool isSelectionMode = false;
  Map<int, bool> selectedFlag = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: () => print(data),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
