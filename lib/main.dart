import 'package:flutter/material.dart';
import 'package:insta_profile/page/home.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    title: 'Gallery',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return home();
  }
}
