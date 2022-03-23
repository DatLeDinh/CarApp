import 'package:driveapp/src/resource/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff3277D8)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 140),
              Image.asset('car-red.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text("Welcom Aboard!", style: TextStyle(fontSize: 22)),
              ),
              Text(
                "Signup with Cab in simple steps",
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon:
                          Container(width: 50, child: Image.asset("user.png")),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon:
                          Container(width: 50, child: Image.asset("mail.png")),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Phone",
                      prefixIcon:
                          Container(width: 50, child: Image.asset("phone.png")),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon:
                        Container(width: 50, child: Image.asset("lock.png")),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "Already a User?",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                            text: "Sign up for new account",
                            style: TextStyle(
                                color: Color(0xff3277D8), fontSize: 16))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
