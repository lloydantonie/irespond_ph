import 'package:flutter/material.dart';

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
            color: Colors.white,
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onChanged: (value) {
                          setState(() {
                            suffix = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
                      child: MaterialButton(
                        child: Text(
                          'DONATE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Container(
                                    height: 200,
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "You has been Donated!"),
                                          ),
                                          SizedBox(
                                            width: 320.0,
                                            child: RaisedButton(
                                              color: Color(0xFFFF9800),
                                              onPressed: () {},
                                              child: Text(
                                                "Ok",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
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
