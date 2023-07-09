import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Pessoa saiu');
  }

  void increment() {
    print('Pessoa entrou');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pode entrar !",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 4,
            ),
          ),
          Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: null,
                //style: TextButton.styleFrom(backgroundColor: Colors.black, fixedSize: Size(100, 100)),
                child: Text(
                  "Entrou",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              TextButton(
                onPressed: null,
                //style: TextButton.styleFrom(backgroundColor: Colors.black, fixedSize: Size(100, 100)),
                child: Text(
                  "Entrou",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
