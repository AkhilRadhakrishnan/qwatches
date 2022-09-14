import 'package:flutter/material.dart';
import 'package:q_watches/utils/utils.dart';

ButtonStyle elevatedButton(width,color) {
  return ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: color,
    elevation: 5,
    fixedSize: Size(width, 50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
  );
}
Widget watchCondition(text){
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      border: Border.all(
          color: primaryColor, width: 0.75, style: BorderStyle.solid),),
   height: 30,width: 150,
    child: Center(child: Text(text)),
  );
}
Widget sizedBox(double height,double width){
  return SizedBox(height: height,width: width);
}
Widget divider(double height,double width){
  return Divider(height: height, thickness: width);
}


final snackBar = SnackBar(content: Text(' Successfully Submitted'));