import 'package:flutter/material.dart';
import 'package:irespond_ph/bloc/navigation_bloc.dart';

class AboutUsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(228.0, -30.0),
            child:
            // Adobe XD layer: 'design' (shape)
            Container(
              width: 200.0,
              height: 500.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/about_shape.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(25, 251.0),
            child: Transform.rotate(
              angle: 3.1416,
              child:
              // Adobe XD layer: 'white' (shape)
              Container(
                width: 380.0,
                height: 596.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 5),
                      blurRadius: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(200, 70.0),
            child:
            // Adobe XD layer: 'people' (shape)
            Container(
              width: 277.0,
              height: 255.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/about_people.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(130, 346.0),
            child: SizedBox(
              width: 180.0,
              child: Text(
                'ABOUT US',
                style: TextStyle(
                  fontFamily: 'Archivo',
                  fontSize: 30,
                  color: const Color(0xfff9b016),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 45.0),
            child: SizedBox(
              width: 170,
              height: 195.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Archivo',
                    fontSize: 20,
                    color: const Color(0xff181818),
                  ),
                  children: [
                    TextSpan(
                      text: 'What is',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' iRespondPH',
                      style: TextStyle(
                        color: const Color(0xfff5aa09),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: '?\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'IRespondPH, is a',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' Post Disaster Needs Assessment tool',
                      style: TextStyle(
                        fontSize: 10,
                        color: const Color(0xffff6f00),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                      '. In an aftermath of a disaster, this application aims to provide crucial and real time information to users using HeatMap. Overall, IRespondPH aims to provide assessment to improve the decision maker\'s ability to',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' facilitate response',
                      style: TextStyle(
                        fontSize: 10,
                        color: const Color(0xffff6f00),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' and',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' recovery efforts efficiently',
                      style: TextStyle(
                        fontSize: 10,
                        color: const Color(0xffff6f00),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(70, 412.0),
            child: SizedBox(
              width: 300.0,
              height: 388.0,
              child: SingleChildScrollView(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 15,
                        color: const Color(0xffff6f00),
                      ),
                      children: [
                        TextSpan(
                          text: 'Our Mission\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                          'Our mission is to assess the impact of the calamities, give vital information to authorities and facilitate disaster relief and humanitarian assistance in calamity-stricken areas with the aim of enabling affected families to rebuild their lives and communities to start sustainable rehabilitation programs.\n\n',
                          style: TextStyle(
                            color: const Color(0xff707070),
                          ),
                        ),
                        TextSpan(
                          text: 'Our Vision\n',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                          'We envisioned this app to become the PDNA app that will be utilized by the government that looks ahead to restoring damaged infrastructures, houses, livelihoods, services, governance, social systems. It includes on emphasis on reducing future disaster risk and building resilience.\n\n',
                          style: TextStyle(
                            color: const Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
