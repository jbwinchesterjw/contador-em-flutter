import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // retira a faixa de debg da tela
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
      print(count);
    });
  }

  void increment() {
    setState(() {
      count++;
      print(count);
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count >= 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img1.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull? "Esta lotado" : "Pode entrar !",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 4,
              ),
            ),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 100,
                color: isFull ? Colors.red :  Colors.white,
              ),
            ),
            const Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white60,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Saiu",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                      backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white60,
                      fixedSize: const Size(100, 100)),
                  child: const Text(
                    "Entrou",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
