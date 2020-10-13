import 'package:flutter/material.dart';
import 'package:irespond_ph/bloc/navigation_bloc.dart';

class ContactUsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 435.0,
            height: 275.0,
            decoration: BoxDecoration(
              color: const Color(0xffe7f2fd),
            ),
          ),
          Transform.translate(
            offset: Offset(5, 48.0),
            child:
            // Adobe XD layer: 'Untitled-3' (shape)
            Container(
              width: 485.0,
              height: 353.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/contact_people.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(120.0, 54.0),
            child: Text(
              'CONTACT US',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 35,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x1c000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(90.0, 534.0),
            child: Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(102.0, 546.0),
            child:
            // Adobe XD layer: '8807' (shape)
            Container(
              width: 40.0,
              height: 41.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/contact_mail.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 431.0),
            child: Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(100.0, 443.0),
            child:
            // Adobe XD layer: '56382-200' (shape)
            Container(
              width: 42.0,
              height: 42.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/contact_phone.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(178.0, 453.0),
            child: Text(
              '5517651 / 0900100001',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffff8000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(178.0, 556.0),
            child: Text(
              'irespondph@gmail.com',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffff8000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 641.0),
            child: Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(100.0, 651.0),
            child:
            // Adobe XD layer: '19-195743_map-point…' (shape)
            Container(
              width: 40.0,
              height: 46.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(230.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/contact_address.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(178.0, 663.0),
            child: Text(
              'National University',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xffff8000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
