

import 'package:flutter/material.dart';
import 'package:miniproject/provider/auth_provider.dart';
import 'constant.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool isLoading = false;

  // Future<void> userSetup(String displayName) async {
  //   //
  //   // CollectionReference users = FirebaseFirestore.instance.collection('users');
  //   // FirebaseAuth auth = FirebaseAuth.instance;
  //   // String uid = auth.currentUser!.uid;
  //   // users.add({
  //   //   'displayName':displayName,
  //   //   'uid':uid
  //   // });
  //   return;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading == false
            ? Padding(
                padding: EdgeInsets.all(0.0),
                child: SingleChildScrollView(
                  child: Container(
                    color: kMainColor,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Stack(
                          fit: StackFit.passthrough,
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Image.asset('assets/op.png'),
                            Positioned(
                              top: 13,
                              left: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                    child: IconButton(
                                  color: kMainColor,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.circle_outlined,
                                    size: 40,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 429.5,
                          width: 418,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 380,
                                  child: Form(
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          cursorColor: kMainColor,
                                          controller: _username,
                                          decoration: InputDecoration(
                                            labelText: 'DISPLAY NAME',
                                            fillColor: kMainColor,
                                            labelStyle:
                                                TextStyle(color: kMainColor),
                                            border: UnderlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: kMainColor),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: kMainColor),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: kMainColor),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                const Radius.circular(30.0),
                                              ),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: kMainColor,
                                            ),
                                          ),
                                          maxLength: 30,
                                        ), //
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 380,
                                          child: TextFormField(
                                            cursorColor: kMainColor,
                                            controller: _email,
                                            decoration: InputDecoration(
                                              labelText: 'EMAIL',
                                              fillColor: kMainColor,
                                              labelStyle:
                                                  TextStyle(color: kMainColor),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kMainColor),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kMainColor),
                                              ),
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: kMainColor),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  const Radius.circular(30.0),
                                                ),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.email,
                                                color: kMainColor,
                                              ),
                                            ),
                                            maxLength: 30,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 380,
                                          child: TextFormField(
                                            cursorColor: kMainColor,
                                            controller: _password,
                                            decoration: InputDecoration(
                                              labelText: 'PASSWORD',
                                              fillColor: kMainColor,
                                              labelStyle:
                                                  TextStyle(color: kMainColor),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kMainColor),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: kMainColor),
                                              ),
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: kMainColor),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  const Radius.circular(30.0),
                                                ),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.email,
                                                color: kMainColor,
                                              ),
                                            ),
                                            maxLength: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              isLoading = true;
                                            });
                                            AuthClass()
                                                .createAccount(
                                                    email: _email.text.trim(),
                                                    password:
                                                        _password.text.trim(),
                                                    username: _username.text.trim())
                                                .then((value) {
                                              if (value == "Account created") {
                                                setState(() {
                                                  isLoading = false;
                                                });
                                                Navigator.pushNamed(context,
                                                    '/afterLoginAndRegister');
                                              } else {
                                                setState(() {
                                                  isLoading = false;
                                                });
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(value)));
                                              }
                                            });
                                          },
                                          child: Text(
                                            'CREATE ACCOUNT',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.white,
                                            primary: kMainColor,
                                            minimumSize: Size(380, 55),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
