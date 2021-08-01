import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmain5,
        title: Text('Account'),
      ),
      backgroundColor: kMainColor,
      body: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
        margin: EdgeInsets.only(bottom: 200, left: 20, right: 20, top: 20),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_circle,
              color: Kmain5,
              size: 100,
            ),
            SizedBox(
              height: 45,
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: 'YOUR NAME',
                focusColor:Colors.black,
                labelStyle: TextStyle(color: Colors.black),
                fillColor:  Kmain6,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 40,
                  color:Colors.black ,
                ),
                suffixIcon: Icon(
                  Icons.border_color_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              maxLength: 30,
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: 'EMAIL',
                focusColor: Colors.black,
                labelStyle: TextStyle(color: Colors.black),
                fillColor: kMainColor,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:Colors.black),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color:Colors.black),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,size: 40,
                ),
                suffixIcon: Icon(
                  Icons.border_color_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              maxLength: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Kmain6,
                  side: BorderSide(color: Colors.black, width: 2),
                  minimumSize: Size(380, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0),
              onPressed: () {},
              child: Text('ADD ADDRESS'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Kmain6,
                  side: BorderSide(color: Colors.black, width: 2),
                  minimumSize: Size(380, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0),
              onPressed: () {},
              child: Text('ADD PHONE NUMBER'),
            )
          ],
        ),
      ),
    );
  }
}
