import 'package:flutter/material.dart';
import 'package:irespond_ph/bloc/navigation_bloc.dart';
import 'package:irespond_ph/pages/detailsofDisaster.dart';

class ReportPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFECB3),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 90.0),
            child: Row(
              children: <Widget>[
                Text('REPORT',
                    style: TextStyle(
                        fontFamily: 'Montserrat-ExtraBold',
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 60.0)),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 50.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 100.0,
                        child: ListView(children: [
                          _buildFoodItem('assets/dis1.png', 'Drought'),
                          _buildFoodItem('assets/dis2.png', 'Eruption'),
                          _buildFoodItem('assets/dis3.png', 'Fire'),
                          _buildFoodItem('assets/dis4.png', 'Earthquake'),
                          _buildFoodItem('assets/dis5.png', 'Flood')
                        ])))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsoftheDisaster(
                      heroTag: imgPath, foodName: foodName)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 95.0,
                          width: 95.0)),
                  SizedBox(width: 30.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold)),
                      ])
                ])),
              ],
            )));
  }
}
