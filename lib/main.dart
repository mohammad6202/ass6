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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI")),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                  splashColor: Colors.blue,
                  textColor: Colors.blue,
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return screen_one();
                      }));
                    });
                  }),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  )),
              MaterialButton(
                  textColor: Colors.blue,
                  onPressed: (() {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return screen_tow();
                      }));
                    });
                  }),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          ),
        ));
  }
}
