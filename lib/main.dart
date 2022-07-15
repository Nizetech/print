import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:print/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}
