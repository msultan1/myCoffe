import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppBarLayout {
   AppBar myAppBar ;




   PopupMenuButton GetMenueButton ()
   {

     PopupMenuButton my_menue= PopupMenuButton(
         icon: Icon(
           Icons.account_circle_outlined,
           color: Colors.white,
         ),
         elevation: 20,
         enabled: true,
         onSelected: (value) {
           if(value == "LogOut"){

           }
         },
         itemBuilder: (context) => [
           PopupMenuItem(
             child: Text("LogOut"),
             value: 1,
           ),
         ]
     );

     return my_menue;
   }

   AppBar GetAppBar (String UserName){
      myAppBar =AppBar(
        actions: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              UserName,
              textScaleFactor: 1.5,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),

          GetMenueButton (),
        ],
        leading: Transform.scale(
          scale: 1.1,
          child: IconButton(
            onPressed: (){},
            icon: new Image.asset('assets/PNG/AppBarlogo1White.png'),
          ),
        ),

        title: Text ("MyCoffe"),
      );
     return myAppBar;
   }
}