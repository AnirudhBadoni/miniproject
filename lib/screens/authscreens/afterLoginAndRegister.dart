import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:miniproject/provider/auth_provider.dart';

import 'loginPage.dart';

import 'package:flutter/widgets.dart';

import 'constant.dart';

class AfterLoginAndRegister extends StatefulWidget {
  const AfterLoginAndRegister({Key? key}) : super(key: key);

  @override
  _AfterLoginAndRegisterState createState() => _AfterLoginAndRegisterState();
}

class _AfterLoginAndRegisterState extends State<AfterLoginAndRegister> {
  String? user = FirebaseAuth.instance.currentUser!.email == null
      ? FirebaseAuth.instance.currentUser!.phoneNumber
      : FirebaseAuth.instance.currentUser!.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmain5,
        title: Text(
          'Welcome',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Kmain5),
              accountName: Text('$user'),
              accountEmail: Text('$user'),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text('Account'),
              onTap: () {
                Navigator.pushNamed(context, '/account');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.group_rounded,
                color: Colors.black,
              ),
              title: Text('Refer a Friend'),
              onTap: () {
                Navigator.pushNamed(context, '/refer');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.local_mall,
                color: Colors.black,
              ),
              title: Text('Order History'),
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.black,
              ),
              title: Text('Help And Support'),
              onTap: () {
                Navigator.pushNamed(context, '/phone');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.system_security_update,
                color: Colors.black,
              ),
              title: Text('Updates'),
              onTap: () {
                Navigator.pushNamed(context, '/updates');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.book_rounded,
                color: Colors.black,
              ),
              title: Text('Tutorial'),
              onTap: () {
                Navigator.pushNamed(context, '/tutorial');
              },
            ),
            Divider(
              color: Colors.black12,
              height: 10.0,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text('Log Out'),
              onTap: () {
                AuthClass().signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LogInAndRegister()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: kMainColor,
        child: Container(
          padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
          margin: EdgeInsets.only(bottom: 100, left: 20, right: 20, top: 100),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.white,
                // offset: new Offset(6.0, 6.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/download.jfif'),
              SizedBox(
                height: 45,
              ),
              Text(
                "Welcome to our shopping app, please cooperate it is still building!!",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
