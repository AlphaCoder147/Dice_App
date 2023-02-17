import 'package:flutter/material.dart';
import 'dart:math';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var dicenum = 1;
  void roll() {
    setState(() {
      dicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/flxgdsc_logo.png",
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/dice_$dicenum.PNG", fit: BoxFit.cover),
              ElevatedButton(
                onPressed: () {
                  roll();
                },
                style: TextButton.styleFrom(),
                child: const Text("Roll!"),
              )
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
