import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("gareeb app"),
      backgroundColor: Colors.purple[100],),
      
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: const Text(
            "yah gareeb inke ma ke chut ",
            style: TextStyle(color: Color.fromARGB(255, 234, 30, 30)),
          ),
        ),
      ),
    );
  }
}
