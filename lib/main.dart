import 'package:flutter/material.dart';
import 'titleSection.dart';
import 'AppBarLayout.dart';
import 'OrderButtonSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MyCoffe',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'MyCoffe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 


  @override
  Widget build(BuildContext context) {
    //Variable Definitions
    Color color = Theme.of(context).primaryColor;
    String oneShot = "assets/PNG/SingleShotImg.png";
    String doubleShot = "assets/PNG/DoubleShotImg.png";
    String userName = "Mohamed Sultan";
    String Balance = "50";
    String Remain_shots = "20";

 

    return Scaffold(
      appBar: AppBarLayout().GetAppBar(userName) ,

      body: ListView(
        children: [

          TitleSection().GetTitle_Section(Balance, Remain_shots),

          OrderButtonSection().Get_OrderButton_Section(color, oneShot, doubleShot),

        ],
      ),
    );

  }

}
