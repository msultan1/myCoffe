import 'package:flutter/material.dart';

class OrderButtonSection {

  Widget myOrderButtonSection ;

  Column buildButtonColumn(Color color, String imagePath, String label) {
    return Column(
      children: [
        ButtonTheme(
          minWidth: 300.0,
          height: 100.0,
          child: IconButton(
              onPressed: (){},
              icon: new Image.asset(imagePath),
              color: color,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget Get_OrderButton_Section(Color color , String oneShot , String doubleShot){
    myOrderButtonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(color,oneShot , 'Single'),
          buildButtonColumn(color,doubleShot , 'Double'),
        ],
      ),
    );
    return myOrderButtonSection;
  }


}

