import 'package:flutter/material.dart';
import 'package:university_app/screens/Splashscreen.dart';
//import 'package:university_app/screens/home_screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:Splashscreen(),
      debugShowCheckedModeBanner: false,
);
}
} 



 