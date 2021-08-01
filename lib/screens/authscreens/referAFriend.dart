import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class ReferAFriend extends StatefulWidget {
  const ReferAFriend({Key? key}) : super(key: key);

  @override
  _ReferAFriendState createState() => _ReferAFriendState();
}

class _ReferAFriendState extends State<ReferAFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Kmain5 ,title: Text('Refer'),),
      backgroundColor: kMainColor,
      body: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
        margin: EdgeInsets.only(bottom: 200, left: 20, right: 20, top: 150),
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
              "Refer a friend and earn money!!",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 45,
            ),Text(
              "CODE: 48564!!",
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
                icon: Icon(Icons.link_outlined),
                label:Text('Copy the link'),
                )
          ],
        ),
      ),
    );
  }
}
