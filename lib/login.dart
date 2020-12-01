import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "Phone Authentication",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image(
              image: AssetImage("asset/image/demand_icon.png"),
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Colors.cyan,
                    ),
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Enter Your Phone Number...",
                    fillColor: Colors.white70),
                onChanged: (value) {
                  //Phone Number Save Cheyyal
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                print("njengi");
                otpDialogBox(context);
              },
              child: Text(
                "Generate OTP",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 7.0,
              color: Colors.cyan,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Need Help?"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please enter the phone number followed by country code",
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                //authcheck
                "AUTHCHECK")
          ],
        ),
      ),
    );
  }

  otpDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter your OTP'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                ),
                onChanged: (value) {
                  //otp value change cheyyanam
                },
              ),
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  //signin
                  print("SignIn Nadakanam");
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          );
        });
  }
}
