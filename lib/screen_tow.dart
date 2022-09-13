import 'package:ass6/main.dart';
import 'package:ass6/screen_one.dart';
import 'package:flutter/material.dart';

class screen_tow extends StatefulWidget {
  const screen_tow({super.key});

  @override
  State<screen_tow> createState() => _screen_towState();
}

class _screen_towState extends State<screen_tow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Registration",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  });
                }),
                icon: Icon(Icons.home),
                label: Text("Home"))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                textColor: Colors.blue,
                focusColor: Colors.blue,
                splashColor: Colors.blue,
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen_one();
                    }));
                  });
                }),
                child: Text("Login", style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
