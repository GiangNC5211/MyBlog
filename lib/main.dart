import 'package:flutter/material.dart';
import 'package:uiblog/Home/home.dart';
import 'package:uiblog/langdingpage%201/three3.dart';
import 'package:uiblog/langdingpage%201/two2.dart';
import 'package:uiblog/login/login2.dart';
import './langdingpage 1/one1.dart';
import 'Login/login1.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'Home/home.dart';

Future<void> main() async {
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uiblog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      routes: {
        LangdingPage1.routeName: (ctx) => const LangdingPage1(),
        LangdingPage2.routeName: (ctx) => const LangdingPage2(),
        LangdingPage3.routeName: (ctx) => const LangdingPage3(),
        Login1.routeName: (ctx) => const Login1(),
        Login2.routeName: (ctx) => const Login2(),
        HomePage.routeName: (ctx) =>  HomePage(),
      },
    );
  }
}
