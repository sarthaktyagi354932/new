// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_30_day/utils/routes.dart';

class LogingPage extends StatefulWidget {
  const LogingPage({super.key});

  @override
  State<LogingPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "welcome $name",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter username",
                      labelText: "username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter password",
                      labelText: "password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRouts.homeRouts);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular( changeButton ? 50 : 8),
                  
                ),
                width: changeButton ? 50: 150,
                
                height: 50,
                // color: Colors.deepOrange,
                alignment: Alignment.center,
                child: changeButton ? 
                Icon(Icons.done,
                color: Colors.white,) :
                Text(
                  "login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )

            // ElevatedButton(
            //   child: Text(
            //     "loging go ",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   style: TextButton.styleFrom(
            //       minimumSize: Size(200, 60), backgroundColor: Colors.purple),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRouts.homeRouts);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
