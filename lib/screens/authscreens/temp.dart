// Navigator.of(context).pop;
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (BuildContext context) => User2()));





// body: Column(
// children: <Widget>[
// Expanded(
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.all(0.0),
// color: Colors.blueAccent,
// child: Image(
// image: NetworkImage(
// 'https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbW1pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
// ),
// ),
// ),
// Expanded(
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.all(50.0),
// color: Colors.blueAccent,
// child: Row(
// children: [
// Container(
// child: Icon(
// Icons.email,
// size: 50.0,
// ),
// ),
// RaisedButton(
// onPressed: () {
// launch('https://mail.google.com/mail/u/0/#inbox');
// },
// child: Text('Follow Me On Facebook'),
// ),
// ],
// )),
// ),
// Expanded(
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.all(50.0),
// color: Colors.blueAccent,
// child: Row(
// children: [
// Container(
// child: Icon(
// FontAwesomeIcons.facebook,
// size: 50.0,
// ),
// ),
// RaisedButton(
// onPressed: () {
// launch('https://www.facebook.com/friends');
// },
// child: Text('Follow Me On Facebook'),
// ),
// ],
// )),
// ),
// Expanded(
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.all(50.0),
// color: Colors.blueAccent,
// child: Row(
// children: <Widget>[
// Container(
// child: Icon(
// FontAwesomeIcons.linkedin,
// size: 50.0,
// ),
// ),
// RaisedButton(
// onPressed: () {
// launch('https://www.linkedin.com/feed/');
// },
// child: Text('follow me on linkedin'),
// ),
// ],
// )),
// ),
// Expanded(
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.all(50.0),
// color: Colors.blueAccent,
// child: Row(
// children: [
// Container(
// child: Icon(
// FontAwesomeIcons.github,
// size: 50.0,
// ),
// ),
// RaisedButton(
// onPressed: () {
// launch('https://github.com/');
// },
// child: Text('follow me on github'),
// ),
// ],
// )),
// ),
// Expanded(
// child: Row(
// children: [
// Expanded(
// child: Container(
// alignment: Alignment.center,
// color: Colors.blueAccent,
// child: TextField(
// cursorColor: Colors.black,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderSide: BorderSide(width: 10),
// borderRadius: const BorderRadius.all(
// const Radius.circular(30.0),
// ),
// ),
// hintText: 'add comments',
// ),
// ),
// ),
// ),
// Expanded(
// child: Container(
// alignment: Alignment.center,
// //padding: EdgeInsets.all(10.0),
// color: Colors.blueAccent,
// child: FlatButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => SecondScreen(),
// ),
// );
// },
// //padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
// color: Colors.red,
// textColor: Colors.white,
// child: Text(
// 'Submit',
// style: TextStyle(
// fontSize: 20.0,
// ),
// ),
// ),
// ),
// )
// ],
// )),
// ],
// ),


// import 'package:flutter/material.dart';
// import 'package:miniproject/screens/authscreens/phone_auth.dart';
//
// class PhoneAuthentication extends StatefulWidget {
//   const PhoneAuthentication({Key? key}) : super(key: key);
//
//   @override
//   _PhoneAuthenticationState createState() => _PhoneAuthenticationState();
// }
//
// class _PhoneAuthenticationState extends State<PhoneAuthentication> {
//   @override
//   Widget build(BuildContext context) {
//     return  GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => PhoneAuth()));
//
//       },
//       child: Container(
//       padding: const EdgeInsets.all(10),
//         color: Colors.amber,
//         margin: const EdgeInsets.symmetric(vertical: 50),
//         child: Text("Continue with phone"),
//       ),
//     );
//   }
//
// }
