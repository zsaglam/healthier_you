import 'package:flutter/material.dart';
import 'package:healthier_you_bismillah/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF75A0),
          secondary: const Color(0x95E1D3),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
