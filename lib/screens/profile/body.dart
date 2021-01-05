import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/profile/mainprofile.dart';
import 'package:koinbee/screens/welcome/welcome.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(
            fontFamily: 'Source sans pro',
            letterSpacing: 3.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MainProfile();
                    },
                  ));
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Source sans pro',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                onPressed: () {
                  // setState(
                  //   () {},
                  // );
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.security,
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        'Security',
                        style: TextStyle(
                          fontFamily: 'Source sans pro',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                onPressed: () {
                  // setState(
                  //   () {},
                  // );
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: 'Source sans pro',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                onPressed: () {
                  // setState(
                  //   () {},
                  // );
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.help,
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        'Help',
                        style: TextStyle(
                          fontFamily: 'Source sans pro',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ));
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(5.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.supervisor_account,
                        color: kPrimaryColor,
                      ),
                      title: Text(
                        'Sign Out',
                        style: TextStyle(
                          fontFamily: 'Source sans pro',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
