import 'package:flutter/material.dart';

class FisrtPage extends StatelessWidget {
  const FisrtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/login_img.png", fit: BoxFit.cover),
            const SizedBox(height: 20.0),
            const Text("Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // ignore: avoid_print
                          print("HEllo");
                        },
                        style: TextButton.styleFrom(),
                        child: const Text("GO!"),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
