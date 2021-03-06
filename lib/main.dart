import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vasti UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D212B),
        accentColor: Color(0xFFFA784A),
      ),
      home: HomeScreen(currentUser: currentUser),
    );
  }
}
