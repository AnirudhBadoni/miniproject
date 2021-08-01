import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:miniproject/screens/authscreens/orderHistory.dart';
import 'package:miniproject/screens/authscreens/helpAndSupport.dart';
import 'package:miniproject/screens/authscreens/referAFriend.dart';
import 'package:miniproject/screens/authscreens/tutorial.dart';
import 'package:miniproject/screens/authscreens/updates.dart';
import 'account.dart';
import 'afterLoginAndRegister.dart';
import 'checkout.dart';
import 'constant.dart';
import 'register.dart';
import 'login.dart';
import 'loginPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/afterLoginAndRegister': (context) => AfterLoginAndRegister(),
        '/home': (context) => Home(),
        '/phone': (context) =>HelpAndSupport(),
        '/refer': (context) =>ReferAFriend(),
        '/history': (context) =>OrderHistory(),
        '/updates': (context) =>Updates(),
        '/tutorial': (context) =>Tutorial(),
        '/account': (context) =>Account(),
        '/addNumber': (context) =>Account(),
        '/addPhoneNumber': (context) =>Account(),
        '/checkout':(context)=>Checkout()
      },
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: kMainColor, accentColor: kMainColor),
      home: LogInAndRegister(),
    );
  }
}
