import 'package:ass6/screen_one.dart';
import 'package:ass6/screen_tow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return screen_one();
                      }));
                    });
                  }),
                  child: Text(
                    "Press to go to Screen 1",
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return screen_tow();
                      }));
                    });
                  }),
                  child: Text(
                    "Press to go to Screen 2",
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ));
  }
}
