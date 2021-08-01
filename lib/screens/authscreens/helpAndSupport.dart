import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  _HelpAndSupportState createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Kmain5 ,title: Text('Help And Support'),),
      backgroundColor: kMainColor,
      body: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
        margin: EdgeInsets.only(bottom: 200, left: 20, right: 20, top: 200),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 4),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color:Colors.white,
              // offset: new Offset(6.0, 6.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Facing any problem contact us!!",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 45,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Kmain6,
                  side: BorderSide(color: Kmain6, width: 2),
                  minimumSize: Size(380, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0),
              onPressed: () {},
              icon: Icon(Icons.call),
              label:Text('Request a call'),
            )
          ],
        ),
      ),
    );
  }
}
