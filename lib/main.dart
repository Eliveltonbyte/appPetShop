import 'package:flutter/material.dart';
import 'package:quitanda/src/pages/auth/sing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 69, 154, 224),
        scaffoldBackgroundColor:
            const Color.fromARGB(251, 248, 247, 247).withAlpha(190),
      ),
      home: const SingInScreen(),
    );
  }
}
