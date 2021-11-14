import 'package:flutter/material.dart';
import 'package:moodify/constants.dart';
import 'login.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/loginBgjpg.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.person_rounded, color: Colors.white, size: 100),
              GestureDetector(
                key: Key('login'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              LoginPage()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(width: 2, color: Colors.white),
                  ),
                  child: Container(
                      margin: EdgeInsets.all(6),
                      child: Center(
                        child: Text(
                          'Login',
                          style: styleBoldWhiteMedium,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                key: Key('signUp'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SignUpPage()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                        width: 2, color: Colors.lightBlueAccent.shade100),
                  ),
                  child: Container(
                      margin: EdgeInsets.all(6),
                      child: Center(
                        child: Text(
                          'SignUp',
                          style: styleBoldLtBlueMedium,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}