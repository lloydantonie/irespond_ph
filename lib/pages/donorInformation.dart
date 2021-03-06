import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irespond_ph/sidebar/sidebar_layout.dart';

class DonorInformation extends StatefulWidget {
  @override
  _DonorInformationState createState() => _DonorInformationState();
}

class _DonorInformationState extends State<DonorInformation> {
  String firstName;
  String middleName;
  String lastName;
  String suffix;

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
          title: Text('Donor Information',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: Colors.orangeAccent)),
          centerTitle: true,
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
                      labelText: 'First Name',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        firstName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Middle Name',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        middleName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        lastName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Suffix',
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.orange,
                      )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        suffix = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 80.0),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: Color(0xFFFF9800),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                title: Text(
                                  "Donated Successfully",
                                  style: TextStyle(color: Colors.black),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return SideBarLayout();
                                      }));
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Donate',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ])
        ]));
  }
}
