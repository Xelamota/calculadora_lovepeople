import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculadora(),
    );
  }
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "3,325",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 90,
                ),
              ),
            ),
            Container(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _butons("C", color: Colors.grey),
                _butons("±", color: Colors.grey),
                _butons("%", color: Colors.grey),
                _butons("÷", color: Colors.orange),
              ],
            ),
            Container(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _butons("7", color: Colors.white24),
                _butons("8", color: Colors.white24),
                _butons("9", color: Colors.white24),
                _butons("X", color: Colors.orange),
              ],
            ),
            Container(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _butons("4", color: Colors.white24),
                _butons("5", color: Colors.white24),
                _butons("6", color: Colors.white24),
                _butons("-", color: Colors.orange),
              ],
            ),
            Container(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _butons('1', color: Colors.white24),
                _butons('2', color: Colors.white24),
                _butons('3', color: Colors.white24),
                _butons('+', color: Colors.orange),
              ],
            ),
            Container(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 155,
                  child: _bigbutons(),
                ),
                _butons(',', color: Colors.white24),
                _butons('=', color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _butons(String text, {color = Colors.white24}) {
    return SizedBox(
      width: 68,
      height: 66,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Widget _bigbutons() {
    return SizedBox(
      width: 120,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.white24),
          alignment: Alignment.centerLeft,
        ),
        child: const Text(
          "0",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
