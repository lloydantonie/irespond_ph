import 'package:flutter/material.dart';
import 'package:irespond_ph/pages/donorInformation.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Item Information',
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
                    return DonorInformation();
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
                    height: MediaQuery.of(context).size.height - 10.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0))),
            Positioned(
                top: 230.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat-Bold',
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 20.0),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
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
                        )
                      ],
                    ),
                  ],
                )),
            Positioned(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 300.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(65.0),
                        child: TextField(
                          maxLines: 10,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          decoration: InputDecoration(
                              labelText: 'Item Description',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.orange,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                      ),
                    ]))
          ])
        ]));
  }
}
