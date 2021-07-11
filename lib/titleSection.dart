import 'package:flutter/material.dart';

class TitleSection {

  Widget GetTitle_Section (String Blance , String RemianShots){

    Widget mytitleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blance : "+Blance+" EGP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Shots Remain : "+RemianShots+" Shots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return mytitleSection ;
  }


}