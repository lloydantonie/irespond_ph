import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:irespond_ph/screens/blank_screen.dart';
import 'package:irespond_ph/screens/login_screen.dart';
import 'package:irespond_ph/screens/registered.dart';
import 'package:irespond_ph/screens/registration_screen.dart';
import 'package:irespond_ph/screens/welcome_screen.dart';
import 'package:irespond_ph/sidebar/sidebar_layout.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(irespond_ph());
}

class irespond_ph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.white),
      home: SideBarLayout(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        BlankScreen.id: (context) => BlankScreen(),
        registered.id: (context) => registered(),
      },
    );
  }
}
