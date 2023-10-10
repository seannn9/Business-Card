import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void _launchURL() async{
  await launchUrlString("https://github.com/seannn9/Business-Card");
}

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
                radius: 60.0,
                backgroundImage: AssetImage('images/cat.jpg'),
              ),
              Text(
                "Sean Montano",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Acme',
                ),
              ),
              Text(
                "Computer Engineer",
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gloria'
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+63 917 9685440")
                  )
                ),
              ),
              Card(
                color: Colors.black87,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.white),
                    title: Text("seanulric9@gmail.com", style: TextStyle(color: Colors.white),)
                  )
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Garita B, Maragondon, Cavite")
                  )
                )
              ),
              Card(
                color: Colors.black87,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                        leading: Icon(Icons.school, color: Colors.white),
                        title: Text("De La Salle University Dasmarinas", style: TextStyle(color: Colors.white),)
                      )
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: InkWell(
                      onTap: _launchURL,
                      child: Image(
                        image: AssetImage('images/github-mark.png'),
                        width: 50.0,
                    ),
                  ),
                )
              ]),
            ],
          )
        )
      )
    );
  }
}
