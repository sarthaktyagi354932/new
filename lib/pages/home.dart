import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Caralog App")),
      
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: const Text(
            "welcome to 30 days chalang ",
            style: TextStyle(color: Color.fromARGB(255, 232, 224, 224)),
          ),
        ),
      ),
    );
  }
}
