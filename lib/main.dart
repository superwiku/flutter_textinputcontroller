import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String textuser = '';
  String textpass = '';
  final textControllerUser = TextEditingController();
  final textControllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Controller'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'username',
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.blue),
                controller: textControllerUser,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'masukkan nama anda'),
              ),
            ),
            Text(
              'password',
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.blue),
                controller: textControllerPass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'masukkan nama anda'),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      textuser = textControllerUser.text;
                      textpass = textControllerPass.text;
                    });
                  },
                  child: Text('INPUT')),
            ),
            Center(
              child: Container(
                height: 40,
                child: Text(
                  textuser,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 40,
                child: Text(
                  textpass,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
