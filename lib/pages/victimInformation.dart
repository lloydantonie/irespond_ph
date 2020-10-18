import 'package:flutter/material.dart';
import 'package:irespond_ph/pages/victimNeeds.dart';

class VictimInformation extends StatefulWidget {
  @override
  _VictimInformationState createState() => _VictimInformationState();
}

class _VictimInformationState extends State<VictimInformation> {
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
        title: Text('Victim Information',
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
                  return VictimNeeds();
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
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
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
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
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
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
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
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
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
            ],
          ))
        ])
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add person',
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return VictimInformation();
          }));
        },
      ),
    );
  }
}
