import 'package:flutter/material.dart';
import 'package:neyesem/Anasayfa.dart';
import 'package:neyesem/sample.dart';

void main() => runApp(
  MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //  Ana sayfa, başlangıç rotası
      routes: {
        '/': (context) => Anasayfa(),
        '/sayfa2': (context) => Sample(),
        '/sayfa3': (context) => Sample(),
         '/sayfa5': (context) => Sample(),
      },
   );
  }
}
