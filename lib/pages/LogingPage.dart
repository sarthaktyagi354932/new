// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_30_day/utils/routes.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({super.key});

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
              "yah gareeb inke ma ke chut",
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
            ElevatedButton(
              child: Text(
                "loging go ",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  minimumSize: Size(200, 30), backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.pushNamed(context, MyRouts.homeRouts);
              },
            )
          ],
        ),
      ),
    );
  }
}
