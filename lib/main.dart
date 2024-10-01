import 'package:flutter/material.dart';
import 'package:grandmarch_task/auth/screen/login_screen.dart';
import 'package:grandmarch_task/home/screen/home_screen.dart';
import 'package:grandmarch_task/splash/sreen/splash_screen.dart';
var w;
var h;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


