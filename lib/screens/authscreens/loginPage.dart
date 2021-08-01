import 'package:flutter/material.dart';
import 'constant.dart';

class LogInAndRegister extends StatefulWidget {
  const LogInAndRegister({Key? key}) : super(key: key);

  @override
  _LogInAndRegisterState createState() => _LogInAndRegisterState();
}

class _LogInAndRegisterState extends State<LogInAndRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 45,
          ),
          Image.asset('assets/letssee1.png'),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                onPrimary: kMainColor,
                primary: Colors.white,
                side: BorderSide(color: Colors.white, width: 2),
                minimumSize: Size(380, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0),

          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text(
              'REGISTER',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: kMainColor,
                side: BorderSide(color: Colors.white, width: 2),
                minimumSize: Size(380, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0),
          ),
          SizedBox(
            height: 23,
          ),
          Image.asset('assets/xyz.png'),
        ],
      ),
    );
  }
}
