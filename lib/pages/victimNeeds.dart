import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irespond_ph/sidebar/sidebar_layout.dart';

class VictimNeeds extends StatefulWidget {
  @override
  _VictimNeedsState createState() => _VictimNeedsState();
}

class _VictimNeedsState extends State<VictimNeeds> {
  int _counter = 1;

  increment() {
    setState(() {
      _counter++;
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

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
        title: Text('Victim Needs',
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
                height: 100.0,
              ),
              DropDownField(
                controller: needsSelected,
                hintText: "Select any needs",
                enabled: true,
                itemsVisibleInDropdown: 5,
                items: needs,
                onValueChanged: (value) {
                  setState(() {
                    selectNeed = value;
                  });
                },
              ),
              SizedBox(height: 30.0),
              Container(
                width: 125.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFFF9800)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: decrement,
                      child: Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFFFF9800)),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Text('$_counter',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 15.0)),
                    InkWell(
                      onTap: increment,
                      child: Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFFF6D00),
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 250.0),
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
                                "Reported Successfully",
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
                      'Submit Report',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ])
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add needs',
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return VictimNeeds();
          }));
        },
      ),
    );
  }
}

String selectNeed = "";

final needsSelected = TextEditingController();

List<String> needs = [
  "Medicine",
  "Clothes",
  "Food",
  "Cash",
];
