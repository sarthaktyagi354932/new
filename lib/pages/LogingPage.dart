import 'package:flutter/material.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("loging page",style: TextStyle(
          fontSize: 45,
          color: Colors.blue,
          
        ),
        ),
      ),
    );
  }
}
