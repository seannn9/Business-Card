import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void launchURL() async{
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
        backgroundColor: Colors.indigo[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              const Text(
                "Sean Montano",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Acme',
                ),
              ),
              const Text(
                "Computer Engineer",
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gloria'
                ),
              ),
              const SizedBox(
                width: 200.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white,
                )
              ),
              Card(
                color: Colors.blue[900],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.white),
                    title: Text("+63 917 9685440", style: TextStyle(fontFamily: 'Ubuntu', color: Colors.white),)
                  )
                ),
              ),
              Card(
                color: Colors.blue[900],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.white),
                    title: Text("seanulric9@gmail.com", style: TextStyle(color: Colors.white,
                    fontFamily: 'Ubuntu'),)
                  )
                )
              ),
              Card(
                color: Colors.blue[900],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Garita B, Maragondon, Cavite", style: TextStyle(fontFamily: 'Ubuntu', color: Colors.white))
                  )
                )
              ),
              Card(
                color: Colors.blue[900],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                      leading: Icon(Icons.school, color: Colors.white),
                      title: Text("De La Salle University-Dasmarinas", style: TextStyle(color: Colors.white,
                          fontFamily: 'Ubuntu'),)
                    )
                )
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: InkWell(
                      onTap: launchURL,
                      child: Image(
                        image: AssetImage('images/github-mark.png'),
                        width: 50.0,
                    ),
                  ),
                ),
               ]
              ),
              Card(
                color: Colors.blue[900],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Click GitHub Icon",
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      color: Colors.white
                    ),
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