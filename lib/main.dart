import 'package:dice_app/screens/firstpage.dart';
import 'package:dice_app/screens/secondpage.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      routes: {
        "/": (context) => const FisrtPage(),
        "second" : (context) => const SecondPage(),
      },
    );
  }
}
