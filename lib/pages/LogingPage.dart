// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
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
            child: Text("loging go "),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("welcome");
            },
          )
        ],
      ),
    );
  }
}
