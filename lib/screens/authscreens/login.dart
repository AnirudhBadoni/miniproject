import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/provider/auth_provider.dart';
import 'package:miniproject/screens/authscreens/afterLoginAndRegister.dart';

import 'constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isLoading = false;

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
                          Image.asset('assets/fv.png'),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                  child: IconButton(
                                color: kMainColor,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
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
                        height: 474.0,
                        width: 500,
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
                                      controller: _email,
                                      decoration: InputDecoration(
                                        labelText: 'EMAIL',
                                        focusColor: kMainColor,
                                        labelStyle:
                                            TextStyle(color: kMainColor),
                                        fillColor: kMainColor,
                                        border: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: kMainColor),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: kMainColor),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: kMainColor),
                                          borderRadius: const BorderRadius.all(
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
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 380,
                                      child: Form(
                                        child: TextFormField(
                                          cursorColor: kMainColor,
                                          controller: _password,
                                          style: TextStyle(color: kMainColor),
                                          decoration: InputDecoration(
                                            labelText: 'PASSWORD',
                                            focusColor: kMainColor,
                                            labelStyle:
                                                TextStyle(color: kMainColor),
                                            fillColor: kMainColor,
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
                                          maxLength: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 150,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        AuthClass()
                                            .signIN(
                                                email: _email.text.trim(),
                                                password: _password.text.trim())
                                            .then((value) {
                                          if (value == "Welcome") {
                                            setState(() {
                                              isLoading = false;
                                            });

                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AfterLoginAndRegister()),
                                                (route) => false);
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
                                        'LOGIN',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          onPrimary: Colors.white,
                                          primary: kMainColor,
                                          minimumSize: Size(380, 55),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    )
                                  ],
                                ),
                              ),
                            ),
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
            ),
    );
  }
}
