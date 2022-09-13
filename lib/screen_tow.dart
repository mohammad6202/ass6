import 'package:ass6/main.dart';
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
          title: Text("Screen tow"),
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
        body: Container(
            child: Text(
          "press the home button to back to the home page.",
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
