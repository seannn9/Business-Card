import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        body: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.amberAccent,
              ),
              Text(
                "Sean Montano",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PermanentMarker'
                ),
              ),
              Text(
                "App Developer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white,
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+63 917 9685440")
                  )
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("seanulric9@gmail.com")
                  )
                )
              )
            ],
          )
        )
      )
    );
  }
}
