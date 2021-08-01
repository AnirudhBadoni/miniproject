import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class Updates extends StatefulWidget {
  const Updates({Key? key}) : super(key: key);

  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmain5,
        title: Text('Updates'),
      ),
      backgroundColor: kMainColor,
      body: Container(
        padding: EdgeInsets.only(bottom: 20, left: 50, right: 20, top: 20),
        margin: EdgeInsets.only(bottom: 300, left: 50, right: 50, top: 300),
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
            Text(
              "No  update available!!",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
