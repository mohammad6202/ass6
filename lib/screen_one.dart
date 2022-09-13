import 'package:ass6/main.dart';
import 'package:ass6/screen_tow.dart';
import 'package:flutter/material.dart';

class screen_one extends StatefulWidget {
  const screen_one({super.key});

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Login Page",
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
                label: Text("Home"),
              )
            ],
          ),
          body: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            MaterialButton(
              textColor: Colors.blue,
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen_tow();
                  }));
                });
              }),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ])),
        ));
  }
}
