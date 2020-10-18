import 'package:flutter/material.dart';
import 'package:irespond_ph/pages/victimInformation.dart';

class LocationoftheDisaster extends StatefulWidget {
  @override
  _DonorInformationState createState() => _DonorInformationState();
}

class _DonorInformationState extends State<LocationoftheDisaster> {
  String houseNo;
  String streetName;
  String subdivision;
  String barangay;
  String city;
  String region;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFECB3),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.orange,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Location of the Disaster',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: Colors.orangeAccent)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VictimInformation();
                  }));
                },
                color: Colors.orange)
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 10.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(75.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 50.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'House No.',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        houseNo = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Street Name',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        streetName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Subdivision',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        subdivision = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Barangay',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        barangay = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'City',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        city = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Region',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        region = value;
                      });
                    },
                  ),
                ),
              ],
            ))
          ])
        ]));
  }
}
